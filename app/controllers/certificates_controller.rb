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
    @id = params[:id]
  end

  def update

  end

  private

  def certificate_params
    params.require(:certificate).permit(:name, :occasion, :message, :date, :trees_quantity)
  end

end




