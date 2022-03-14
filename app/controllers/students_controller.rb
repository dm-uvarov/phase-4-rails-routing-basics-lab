class StudentsController < ApplicationController

    def index
        students =   Student.all
        render json: students
    end
    
    def grades
        students =   Student.all.order(:grade).reverse
        render json: students
    end

    def highest_grade
        students = Student.all.order(:grade).last
        render json: students
    end
end
