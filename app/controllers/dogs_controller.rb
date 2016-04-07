class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def about
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)

    #@dog.name = @dog.name.capitalize
    #@dog.animal_id = "A" + @dog.animal_id
     # raise @dog.inspect
    if @dog.save
      redirect_to @dog, notice: "Saved successful."     
    else
      flash[:error] = "Error: #{@dog.errors.full_messages}"
      render :new
    end
  end

  def edit
    @dog = Dog.find(dog_params[:id]) 
    @dogs = dogs 
  end

  def contact
  end

  def show
    @dog = Dog.find(params[:id]) 
  end

private

  def dog_params
    params.require(:dog).permit(:animal_id, :name, :gender, :weight, :age, :breed_type, :breed_primary, 
         :cat_compatibility, :dog_compatibility, :human_compatibility, :energy_level, :temperament, :fee, :description, :avatar, :remove_avatar)
  end
end
