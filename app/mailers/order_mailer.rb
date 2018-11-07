class OrderMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def order_confirmation(user, order, items)
    @user = user
    @order = order
    @items = items

    mail to: user.email, subject: "Order Details"
  end
end
