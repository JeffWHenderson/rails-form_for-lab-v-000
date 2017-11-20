class SchoolClassesController < ApplicationController

  def new

  end

  def create
    @school_class = School_class.new
    redirect_to school_class_path(@school_class)
  end

  def show

  end

  def edit
    @school_class = School_Class.find(params[:id])
  end

  def update

  end
end
