class PaymentsController < ApplicationController

  def new
    @certificate = Certificate.find(params[:certificate_id])
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       5, # or amount_pennies
      description:  "Payment",
      currency:     config.default_currency
    )

    @order.update(payment: charge.to_json, state: 'paid')
    redirect_to order_path(@order)


  rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_order_payment_path(@order)
  end
end

