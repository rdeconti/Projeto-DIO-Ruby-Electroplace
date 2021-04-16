class OrdersController < ApplicationController
  before_action :redirect_user_without_session

  def cart
    @cart = current_user.cart
  end

  def my_purchases
    @orders = current_user.orders.finished.order(paid_at: :desc)
  end

  def add_item_to_cart
    cart = current_user.cart || Order.create(user: current_user)

    product = Product.find_by(id: params[:product_id])

    item = OrderItem.new(order: cart, product: product, price: product.price)

    if item.save
      redirect_to cart_path
    else
      head 404
    end
  end

  def remove_item_from_cart
    item = OrderItem.find_by(id: params[:item_id])

    if item.destroy
      redirect_to cart_path
    else
      head 404
    end
  end

  def finish_order
    order = Order.find_by(id: params[:order_id])

    if order.update(paid_at: Time.new)
      redirect_to root_path
    else
      head 404
    end
  end

  private

  def redirect_user_without_session
    redirect_to new_user_session_path if current_user.blank?
  end
end
