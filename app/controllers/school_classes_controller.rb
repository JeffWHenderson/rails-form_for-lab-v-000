class SchoolClassesController < ApplicationController

  def new
    @school_class = School_class.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show

  end

  def edit
    @school_class = School_Class.find(params[:id])
  end

  def update

  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
