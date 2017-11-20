class StudentsController < ApplicationController
      def new
        @student = Student.new
      end

      def create
        school_class_params(params)
        # @student = Student.create(school_class_params(params))
        # redirect_to student_path(@student)
      end

      def show

      end

      def edit

      end

      def update

      end

    private

    def school_class_params(*args)
      params.require(:student).permit(*args)
    end
end
