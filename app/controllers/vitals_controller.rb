class VitalsController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]
  before_action :set_vital, only: %i[ show edit update destroy ]

 def index
        @vitals = Vital.all
 end

  def show
    @pageName = "View Vital"
  end

  def new
    @pageName = "New Vital"
    @vital = Vital.new
  end

  def create
    @pageName = "Add Vital"
    @vital = Vital.new(vital_params)
    if @vital.save!
      redirect_to @vital
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pageName = "Edit Vital"
  end

  def update
#    Rails.error.subscribe(ErrorSubscriber.new)
    if @vital.update!(vital_params)
      redirect_to vitals_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
      @vital.destroy
      redirect_to vitals_path
  end

  private
    def set_vital
      @vital = Vital.find(params[:id])
    end

    def vital_params
      params.expect(vital: [ :id, :name, :short_name, :hi,  :low, :species_id, :units ])
    end
end
