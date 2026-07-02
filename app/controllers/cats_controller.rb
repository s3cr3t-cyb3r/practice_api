class CatsController < ApplicationController
    def index
        cats = Cat.all

        render json: cats
    end

    def show
        cat = Cat.find_by(id: params[:id])

        render json: cat
    end

    def create
        cat = Cat.create(
            breed: params[:breed],
            color: params[:color]
        )

        render json: cat
    end
end
