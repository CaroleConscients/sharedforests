class CertificatesController < ApplicationController

  def new
    @certificate = Certificate.new
  end

  def create
    @certificate = Certificate.new(certificate_params)
    @parcels = Parcel.where('tree_quantity_remaining >= ?', @certificate.trees_quantity)
    if @parcels.empty?

    else
      if user_signed_in?
        @parcel = @parcels.first
        @certificate.parcel = @parcel
        @certificates.users << current_user
        # add user2
        @certificate.save
        redirect_to certificate_path(@certificate)
      else
        redirect_to new_user_session_path
      end
    end
  end

  def edit
    @certificate = Certificate.find(params[:id])
  end

  def update

  end

  private

  def certificate_params
    params.require(:certificate).permit(:name, :occasion, :message, :date, :trees_quantity)
  end

end




