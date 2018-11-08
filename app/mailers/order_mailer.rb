class OrderMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def order_confirmation(order, user)
    @order = order
    @user = user
    @items = LineItem.where(order_id: @order.id)

    mail to: user.email , subject: "Order ##{order.id} Details"
  end
end
