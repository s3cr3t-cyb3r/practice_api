class PersonsController < ApplicationController
    def index
        persons = Person.all

        render json: persons
    end

    def show
        person = Person.find_by(id: params[:id])

        render json: person
    end

    def create
        person = Person.create(
            name: params[:name],
            age: params[:age]
        )

        render json: person
    end

    def update
        person = Person.find_by(id: params[:id])

        person.update(
            name: params[:name] || person.name,
            age: params[:age] || person.age
        )

        render json: person
    end

    def destroy
        person = Person.find_by(id: params[:id])

        person.destroy

        render json: { message: "Deleted Successfully" }
    end
end
