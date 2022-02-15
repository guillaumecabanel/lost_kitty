class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update]

  def index
    @pets = Pet.all
  end

  def show

  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      redirect_to pet_path(@pet.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to pet_path(@pet.id)
    else
      render :edit
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :location, :found_at, :contact)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
