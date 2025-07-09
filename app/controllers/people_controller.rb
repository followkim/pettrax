class PeopleController < ApplicationController
 allow_unauthenticated_access only: %i[ index show ]
  before_action :set_person, only: %i[ show edit update destroy ]
  def index
        @people = Person.all
  end

  def show
    @pageName = "View Person"
  end

  def new
    @pageName = "New Person"
    @person = Person.new
  end

  def create
    @pageName = "Add Person"
    @person = Person.new(person_params)
    if @person.save
      redirect_to @person
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pageName = "Edit Person"
  end

  def update
    if @person.update(person_params)
      redirect_to @person
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
      @person.destroy
      redirect_to people_path
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.expect(person: [ :first_name, :last_name, :address1, :address2, :city, :state, :zip, :phone, :isOrg])
    end
end
