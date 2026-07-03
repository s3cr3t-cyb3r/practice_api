class TeachersController < ApplicationController
    def index
        teachers = Teacher.all

        render json: teachers
    end

    def show
        teacher = Teacher.find_by(id: params[:id])

        render json: teacher
    end

    def create
        teacher = Teacher.create(
            grade: params[:grade],
            subject: params[:subject]
        )

        render json: teacher
    end

    def update
        teacher = Teacher.find_by(id: params[:id])

        teacher.update(
            grade: params[:grade],
            subject: params[:subject]
        )

        render json: teacher
    end
end
