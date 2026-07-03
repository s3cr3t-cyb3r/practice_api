class DogsController < ApplicationController
    def index
        dogs = Dog.all

        render json: dogs
    end

    def show
        dog = Dog.find_by(id: params[:id])

        render json: dog
    end

    def create
        dog = Dog.create(
            breed: params[:breed],
            color: params[:color]
        )

        render json: dog
    end

    def update
        dog = Dog.find_by(id: params[:id])

        dog.update(
            breed: params[:breed],
            color: params[:color]
        )

        render json: dog
    end
end
