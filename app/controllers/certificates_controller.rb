class CertificatesController < ApplicationController

  def new
    @certificate = Certificate.new
  end

  def create
    @certificate = Certificate.new(certificate_params)
    @parcels = Parcel.where('tree_quantity_remaining >= ?', @certificate.trees_quantity)
    if @parcels.empty?

    else
      @parcel = @parcels.first
      @certificate.parcel = @parcel
      @certificates.users << current_user
      # add user2
      @certificate.save
      redirect_to certificate_path(@certificate)
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



# t.integer  "unique_number"
#     t.integer  "parcel_id"
#     t.string   "name"
#     t.text     "message"
#     t.datetime "date"
#     t.integer  "trees_quantity"
#     t.datetime "created_at",     null: false
#     t.datetime "updated_at",     null: false
#     t.index ["parcel_id"], name: "index_certificates_on_parcel_id", using: :btree
