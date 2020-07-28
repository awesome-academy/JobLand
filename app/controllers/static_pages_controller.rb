class StaticPagesController < ApplicationController
  before_action :correct_user
  def index
  end

  def show
  end


  def about
  end

  def products
  end

  private
  def correct_user
    @user = 1
  end
end










# @bestseller=Product.order(order_count: :desc)







# select Count(*) as dem ,produc.name ,order.id
#  from product
#   inner join orderdetail on product.id = id.product_id

#   inner join order on id.orderid = order.id
# order by dem desc
