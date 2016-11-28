class CertificatesController < ApplicationController

  def new
    @certificate = Certificate.new
  end

  def create

  end

  def edit
    @certificate = Certificate.find(params[:id])

  end

  def update

  end

end

