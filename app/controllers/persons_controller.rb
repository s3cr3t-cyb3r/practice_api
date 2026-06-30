class PersonsController < ApplicationController
    def index
        persons = Person.all

        render json: persons
    end
end
