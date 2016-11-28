class CertificatesController < ApplicationController

  def new
    @certificate = Certificate.new
  end

  def create
    @parcel = Parcel.find(params[:parcel_id])
    @certificate = Certificate.new(certificate_params)
    @certificate.parcel = @certificate
    @certificate.save
    redirect_to certificate_path(@certificate)
  end

  def edit
    @certificate = Certificate.find(params[:id])
  end

  def update

  end

  private

  def certificate_params
    params.require(:certificate).permit(:parcel_id, :name, :occasion, :message, :date, :trees_quantity)
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
