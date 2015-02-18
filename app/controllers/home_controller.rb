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

end
