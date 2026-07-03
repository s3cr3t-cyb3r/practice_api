class StudentsController < ApplicationController
    def index
        students = Student.all

        render json: students
    end

    def show
        student = Student.find_by(id: params[:id])

        render json: student
    end

    def create
        student = Student.create(
            grade: params[:grade],
            name: params[:name]
        )

        render json: student
    end

    def update
        student = Student.find_by(id: params[:id])

        student.update(
            grade: params[:grade],
            name: params[:name]
        )

        render json: student
    end
end
