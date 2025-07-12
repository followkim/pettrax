class AnimalVitalsController < ApplicationController
 allow_unauthenticated_access only: %i[ index show ]
  def index
    @animal = Animal.find(params[:id])
    @animal_vitals = AnimalVital.where(animal_id: @animal.id)
  end

  def show
    @pageName = "View Vitals"
    @animal = Animals.find!(params[:id])
    @animal_vitals = Animal.find(@animal.animal_id).name
  end

  def new
    @pageName = "New Vital"
    @animal = Animal.find(params[:id])
    @animal_vital = AnimalVital.new
    @vitals = Vital.where(species_id: @animal.species_id).or(Vital.where(species_id: nil))
  end

  def create
    @formRet = new_animal_vital_path
    @av = AnimalVital.new(animal_vital_params)
    if @av.save!
      redirect_to @av.animal
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pageName = "Edit Vital"
    @formRet = edit_animal_vital_path(params[:id])
    @animal_vital = AnimalVital.find(params[:id])
    @animal = Animal.find(@animal_vital.animal_id)
    @vitals = Vital.where(species_id: @animal.species_id).or(Vital.where(species_id: nil))
  end

  def update
#    Rails.error.subscribe(ErrorSubscriber.new)
    @animal_vital = AnimalVital.find(params[:id])

    if @animal_vital.update!(animal_vital_params)
      @animal = Animal.find(@animal_vital.animal_id)
      redirect_to @animal
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
      @animal_vital = AnimalVital.find(params[:id])
      @animal_id = @animal_vital.animal_id
      @animal_vital.destroy
      redirect_to animal_path(@animal_id)
  end

  private

    def animal_vital_params
      params.expect(animal_vital: [ :animal_id, :vital_id, :note, :value, :dt  ])
    end
end
