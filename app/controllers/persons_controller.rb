class PersonsController < ApplicationController
    def index
        persons = Person.all

        render json: persons
    end

    def show
        person = Person.find_by(id: params[:id])

        render json: person
    end
end
