class UserMailer < ApplicationMailer
  default from: 'notifications@jungle.com'

  def order_confirmation(order)
    @order = order
    @url  = 'http://example.com/login'
    mail(to: @order.email, subject: "Jungle: Order #{order.id} confirmation")
  end
end
