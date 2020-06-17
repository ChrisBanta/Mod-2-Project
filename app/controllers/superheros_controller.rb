class SuperherosController < ApplicationController
    def index
        @superheros = Superhero.all.sample(4)
        render json: @superheros
    end 
end
