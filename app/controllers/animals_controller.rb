class AnimalsController < ApplicationController
  def index #get
    @animals = Animal.all
  end

  def show #get
    @animal = Animal.find(params[:id])
  end

  def new #get
    @animal = Animal.new
  end

  def create #post
    @animal = Animal.new(animal_params)

      if @animal.save
        redirect_to @animal
      else
        render 'new'
      end
  end

  def edit #get
    @animal = Animal.find(params[:id])
  end

  def update #post
    @animal = Animal.find(params[:id])

    if @animal.update(article_params)
      redirect_to @animal
    else
      render 'edit'
    end
  end

  def destroy #post
    @animal = Animal.find(params[:id])
    @animal.destroy

    redirect_to animals_path
  end
end

private
  def animal_params
    params.require(:animal).permit(:name)
  end
