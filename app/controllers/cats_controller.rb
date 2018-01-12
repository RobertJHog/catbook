Catclass CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to @cat
    else
       render 'new'
    end
  end

  def update
    @cat = Cat.find(params[:id])

    if @cat.update_attributes(cat_params)
      redirect_to @cat
    else
      render 'edit'
    end
  end

  def destroy
    @cat = Cat.find(params[:id])

    @cat.destroy

    redirect_to cats_path
  end

  private

  def cat_params
    cat_params = params.require(:cat).permit(:name, :url)
  end

  def set_cat
    @cat = Cat.find(params[:id])
  end

end
