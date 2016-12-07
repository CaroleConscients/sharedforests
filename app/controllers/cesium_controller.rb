class CesiumController < ApplicationController

def index
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
    @icon = "Tree-icon.png"
    @certificates = Certificate.all
end

end
