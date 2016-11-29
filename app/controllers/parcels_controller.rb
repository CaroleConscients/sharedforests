class ParcelsController < ApplicationController
  def create
    @parcel = Parcel.new(params[:parcel])
    @parcel.save
  end

  def update
  @parcel = Parcel.find(params[:id])
  @parcel.update.(params[:parcel])
  end
end
