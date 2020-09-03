class Employer::PaymentsController < ApplicationController
  before_action :user_employer?
  skip_before_action :authenticate_user!
  def new
     @payment = Payment.new
  end

  def create
  	@payment = Payment.new payment_params
  	@payment.company_id = current_user.company.id
    if @payment.valid?
      customer = create_stripe_customer(@payment)
      @session = create_checkout_session(customer, @payment)
      @payment.save!
      @payment.update(session_token: @session.id)
      session[:token] = @payment.session_token
      render :checkout
    else
      flash.now[:error] = @payment.errors.full_messages
      render :new
    end
  end

  private

  def create_stripe_customer(user)
    customer = Stripe::Customer.create(
      email: current_user.company.email,
      metadata: {
        selected_plan: @payment.plan
      }
    )
    user.update!(stripe_customer_id: customer.id)
    customer
  end

  def create_checkout_session(customer, user)
    price = Stripe::Price.list(lookup_keys: [user.plan]).data.first

    Stripe::Checkout::Session.create({
      customer: customer.id,
      success_url: 'http://localhost:3000/employer/companies',
      cancel_url: 'http://localhost:3000/employer/companies',
      payment_method_types: ['card'],
      line_items: [{
        price: price.id,
        quantity: 1,
      }],
      mode: 'subscription',
    })
  end

  def payment_params
  	params.require(:payment).permit(:plan, :company_id)
  end
end
