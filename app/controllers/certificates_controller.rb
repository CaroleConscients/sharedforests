class CertificatesController < ApplicationController

  def show
    @certificate = Certificate.find(params[:id])
    @latitude = @certificate.parcel.latitude
    @longitude = @certificate.parcel.longitude
    @farmer = @certificate.parcel.farmer_name
    @hash = [{lat: @latitude, lng: @longitude}]
    @urlweather = "api.openweathermap.org/data/2.5/weather?lat=#{@latitude}&lon=#{@longitude}&APPID=02af6aaf7b67eec8231b035112f7d5aa"
    @uri = open("http://api.openweathermap.org/data/2.5/weather?lat=-6.482427&lon=-76.375666&APPID=02af6aaf7b67eec8231b035112f7d5aa")
    url = 'http://api.openweathermap.org/data/2.5/weather?lat=-6.482427&lon=-76.375666&APPID=02af6aaf7b67eec8231b035112f7d5aa'
    @weatherapi_return = open(url).read
    @weather_json = JSON.parse(@weatherapi_return)
    @weather_array = @weather_json["weather"]
    @weather_hash = @weather_array[0]
    @weather_description = @weather_hash["description"]
    @weather_temp = @weather_json["main"]["temp"]/10
    @weather_humidity = @weather_json["main"]["humidity"]
    @icon = "Tree-icon-small.png"

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@certificate.unique_number}-#{@certificate.name.parameterize}", # Excluding ".pdf" extension.
               orientation: 'Landscape'
               # page_width:  927
      end
    end
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

        if @certificate.occasion == "Un anniversaire"
          @certificate.template_name = Certificate::TEMPLATE_ANNIVERSAIRE.first
       elsif @certificate.occasion == "Une naissance"
          @certificate.template_name = Certificate::TEMPLATE_NAISSANCE.first
       elsif @certificate.occasion == "Noël"
          @certificate.template_name = Certificate::TEMPLATE_NOEL.first
       elsif @certificate.occasion == "Un baptême"
          @certificate.template_name = Certificate::TEMPLATE_BAPTEME.first
       elsif @certificate.occasion == "Un mariage"
          @certificate.template_name = Certificate::TEMPLATE_MARIAGE.first
       elsif @certificate.occasion == "Dire merci"
          @certificate.template_name = Certificate::TEMPLATE_MERCI.first
       elsif @certificate.occasion == "Faire plaisir"
          @certificate.template_name = Certificate::TEMPLATE_FAIRE_PLAISIR.first
        end

        @certificate.save
        redirect_to edit_certificate_path(@certificate)
    end
  end

  def edit
    @certificate = Certificate.find(params[:id])
    @id = params[:id]
  end

  def update
    @certificate = Certificate.find(params[:id])
    @certificate.assign_attributes(certificate_params)

    if @certificate.save
      flash[:alert] = nil
    else
      flash[:alert] = @certificate.errors.full_messages.join(', ')
    end

    respond_to do |format|
      format.html { redirect_to new_certificate_payment_path(@certificate) }
      format.js
    end
  end

  private

  def parcel_has_enough_trees?
    @certificate.trees_quantity <= @certificate.parcel.tree_quantity_remaining
  end

  def certificate_params
    params.require(:certificate).permit(:name, :occasion, :message, :date, :trees_quantity, :template_name, :giver)
  end

end




