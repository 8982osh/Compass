class DogsController < ApplicationController
  def home
  end

  def about
  end

  def new
    @dog = Dog.new
  end

  def create
    # @dog.name = @dog.name.capitalize
    @dog = Dog.new(params.require(:dog))
    if @dog.save
      
      flash[:notice] = "Saved successful."
      redirect_to @dog
    else
      # render :new
      # redirect, notice: @dog.errors.full_messages
      flash[:error] = "Error. Please review all fields and submit again."
      render :new
    end
  end

  def edit
    
  end

  def contact
  end

  def show
  end
end
