class AnimalVitalsController < ApplicationController
 allow_unauthenticated_access only: %i[ index show ]
  before_action :set_animal_vital, only: %i[ show edit update destroy ]
  def index
        @animal_vital = AnimalVital.all
  end

  def show
    @pageName = "View Vitals"
    @animal = @animal_vital.find(@animal_vital.animal_id).name
    @vital = @animal_vital.find(@animal_vital.vital_id).name
  end

  def new
    @pageName = "New Vital"
    @animal_vital = AnimalVital.new
  end

  def create
    @pageName = "Add Vital"
    @av = AnimalVital.new(animal_params)
    if @av.save!
      redirect_to @av.animal
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pageName = "Edit Vital"
  end

  def update
#    Rails.error.subscribe(ErrorSubscriber.new)
    if @aanimal_vital.update!(animal_params)
      redirect_to @animal_vital
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
      @animal_vital.destroy
      redirect_to animal_vitals_path
  end

  private
    def set_animal_vital
      @animal_vital = AnimalVital.find(params[:id])
    end

    def animal_params
      params.expect(animal: [ :animal_id, :vital_id, :note, :value ])
    end
end
