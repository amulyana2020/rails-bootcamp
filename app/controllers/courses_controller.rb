class CoursesController < ApplicationController
  before_action :set_course, only: %i[show edit update destroy]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path, notice: "Course has been created succesfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to course_path(@course), notice: "Course has been updated succesfully"
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_path, notice: "Course has been deleted succesfully"
  end

  private
  def course_params
    params.require(:course).permit(:name, :description)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
