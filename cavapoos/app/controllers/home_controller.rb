class HomeController < ApplicationController
  
  def index
    @puppies = Puppy.all
  end

  def new
    @puppy = Puppy.new
  end

  def create
    @puppy = Puppy.create(puppy_params)
    if @puppy.save
      redirect_to '/admin'
    else
      render :new
    end
  end

  def edit
    @puppy = Puppy.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def puppy_params
    params.require(:puppy).permit(:pic, :description, :price)
  end

end
