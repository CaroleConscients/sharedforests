class PaymentsController < ApplicationController

  def new
    @certificate = Certificate.find(params[:certificate_id])
  end

  def create
    @certificate = Certificate.find(params[:certificate_id])
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       500, # or amount_pennies
      description:  "Payment",
      currency:     :eur
    )

    # @order.update(payment: charge.to_json, state: 'paid')
    redirect_to certificate_path(@certificate)


  rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_certificate_payment_path(@certificate)
  end
end

