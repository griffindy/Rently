class ApartmentsController < ApplicationController

  def index
    @apartments = Apartment.all # all is bad mmkay
  end

  def new
    @apartment = Apartment.new
    5.times { @apartment.photos.build }
  end

  def create
    @apartment = current_user.apartments.new(params[:apartment])
    if @apartment.save
      redirect_to dashboard_path, notice: "Apartment Created!"
    else
      @photos = @apartment.photos
      @new_photos = 5.times.map { @apartment.photos.build }
      render :new
    end
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def edit
    @apartment = current_user.apartments.find(params[:id])
    @photos = @apartment.photos
    @new_photos = 5.times.map { @apartment.photos.build }
  end

  def update
    @apartment = current_user.apartments.find(params[:id])
    if @apartment.update_attributes(params[:apartment])
      redirect_to [:edit, @apartment], notice: "Updated!"
    else
      render :edit
    end
  end

  def destroy
    current_user.apartments.find(params[:id]).destroy
    redirect_to dashboard_path
  end
end
