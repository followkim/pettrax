class AnimalsController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]
  before_action :set_animal, only: %i[ show edit update destroy ]
  def index
	@animals = Animal.all
  end

  def show
    @pageName = "View Animal"
    @gender =    @animal.species_id != nil ? Gender.find(@animal.genders_id).name : ""
    @species =    @animal.species_id != nil ? Species.find(@animal.species_id).name : ""
    @microchip =  @animal.microchips_id != nil ? Microchip.find(@animal.microchips_id).name : ""
    @status =     @animal.statuses_id != nil ? Status.find(@animal.statuses_id).name : ""
    @animal_vitals = AnimalVital.where(animal_id: @animal.id)
  end

  def new
    @pageName = "New Animal"
    @animal = Animal.new
  end

  def create
    @pageName = "Add Animal"
    @animal = Animal.new(animal_params)
#    @animal.photo.attach(params[:photo])
    if @animal.save!
      redirect_to @animal
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pageName = "Edit Animal"
  end

  def update
#    Rails.error.subscribe(ErrorSubscriber.new)
    if @animal.update!(animal_params)
      @animal.photo.attach(params[:photo])
      redirect_to @animal
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
      @animal.destroy
      redirect_to animals_path
  end

  private
    def set_animal
      @animal = Animal.find(params[:id])
    end

    def animal_params
      params.expect(animal: [ :name, :species_id, :dob,  :genders_id, :breed, :markings, :microchipNumber, :dateImplanted, :dogs, :cats, :kids, :note, :isHypo, :isFixed, :microchips_id, :statuses_id, :photo, personality_ids: [] ])
    end
end
