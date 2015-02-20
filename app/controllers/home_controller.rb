class HomeController < ApplicationController

  def index
    animals = Animal.all
    respond_to do |format|
      format.html {
        animals
      }
      format.json {
        render json: animals
      }
    end
  end

  def destroy
    animal = Animal.find(params[:id])
    animal.destroy
    render json: { success: "Animal was deleted"}
  rescue ActiveRecord::RecordNotFound
    render json: { errors: "An error occured while deleting animal"}, status: :unprocessable_entity
  end

end
