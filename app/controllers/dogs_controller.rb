class DogsController < ApplicationController
  def index
    @dogs = Dogs.all
  end

  def about
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(params.require(:dog))
    if @dog.save
      @dog.name = @dog.name.capitalize
      @dog.animal_id = "A" + #{animal_id}
      flash[:notice] = "Saved successful."
      redirect_to @dog
    else
      flash[:error] = "Error. Please review all fields and submit again."
      render :new
    end
  end

  def edit
    @dog = Dog.find(params[:id])  
  end

  def contact
  end

  def show
    
  end
end
