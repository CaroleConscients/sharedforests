class PaymentsController < ApplicationController
  before_action :find_certificate

  def new
  end

  def create
    # TODO
    redirect_to certificate_path(@certificate)
  end

  private

  def find_certificate
    @certificate = Certificate.find(params[:certificate_id])
  end
end
