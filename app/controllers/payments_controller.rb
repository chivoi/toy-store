class PaymentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhook]

  def webhook
    payment_intent_id =  params[:data][:object][:payment_intent]
    puts params[:data][:object][:charges]
    payment = Stripe::PaymentIntent.retrieve(payment_intent_id)
    pp payment
    listing_id = payment.metadata.listing_id
    buyer_id = payment.metadata.user_id
    puts "User  #{payment.metadata.user_id}"
    puts "Buyer #{payment.metadata.user_id}"
    Order.create(user_id: buyer_id, listing_id: listing_id, payment_intent: payment_intent_id, receipt_url: payment.charges.data[0].receipt_url)
  end
end
