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

    if @certificate.unique_number.nil?
      # AH-PE- PARCEL UNIQUE NUMBER plus AT PARCEL CERTIFICATE (id certificate en cours) UNIQUE NUMBER CALCULE
      number = @certificate.parcel.tree_quantity - @certificate.parcel.tree_quantity_remaining + 1
      number_code = number.to_s.rjust(3, "0")

      @certificate.unique_number = "#{@certificate.parcel.unique_number}-#{number_code}"
      @certificate.save
    end

    # @order.update(payment: charge.to_json, state: 'paid')
    redirect_to certificate_path(@certificate)

  rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_certificate_payment_path(@certificate)
  end
end

