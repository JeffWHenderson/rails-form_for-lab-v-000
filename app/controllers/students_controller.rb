class StudentsController < ApplicationController
      def new
        @student = Student.new
      end

      def create
        @student = Student.create(school_class_params(params))
        redirect_to student_path(@student)
      end

      def show
        @student = Student.find(params[:id])
      end

      def edit
        @student = Student.find(params[:id])
      end

      def update
        @student = Student.find(params)
        @student.update(school_class_params(params))
        redirect_to student_path(@student)
      end

    private

    def school_class_params(*args)
      params.require(:student).permit(*args)
    end
end
