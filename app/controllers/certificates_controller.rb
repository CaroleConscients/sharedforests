class CertificatesController < ApplicationController

  def show
  end

  def new
    @certificate = Certificate.new
  end

  def create
    @certificate = Certificate.new(certificate_params)
    @parcels = Parcel.where('tree_quantity_remaining >= ?', @certificate.trees_quantity)
    if @parcels.empty?
      flash[:alert] = "Commandes de parcelles en cours"
      redirect_to root_path
    else
        @parcel = @parcels.first
        @certificate.parcel = @parcel
        @certificate.users << current_user
        # kevin @certificates.users
        # add user2
        @certificate.save
        redirect_to edit_certificate_path(@certificate)
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




