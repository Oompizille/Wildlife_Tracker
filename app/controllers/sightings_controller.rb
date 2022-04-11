class SightingsController < ApplicationController
  def index #Index is always plural
    @sightings =  Sighting.all
  end

    def show
      @animal = Animal.find(params[:animal_id])
      @sighting = @animal.sightings.find(params[:id])
    end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

    def destroy
    end
  end
