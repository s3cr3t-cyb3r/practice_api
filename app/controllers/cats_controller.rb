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

    def update
        cat = Cat.find_by(id: params[:id])

        cat.update(
            breed: params[:breed],
            color: params[:color]
        )

        render json: cat
    end

    def destroy
        cat = Cat.find_by(id: params[:id])

        cat.destroy

        render json: { message: "Deleted Successfully" }
    end
end
