class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to @photo
    else
       render 'new'
    end
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update_attributes(photo_params)
      redirect_to @photo
    else
      render 'edit'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])

    @photo.destroy

    redirect_to photos_path
  end

  private

  def photo_params
    photo_params = params.require(:photo).permit(:name, :url)
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end

end
