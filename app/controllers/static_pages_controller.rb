class StaticPagesController < ApplicationController

  def index
  end

  def home
  end

  def show
  end


  def about
  end

  def products
  end

end










# @bestseller=Product.order(order_count: :desc)







# select Count(*) as dem ,produc.name ,order.id
#  from product
#   inner join orderdetail on product.id = id.product_id

#   inner join order on id.orderid = order.id
# order by dem desc
