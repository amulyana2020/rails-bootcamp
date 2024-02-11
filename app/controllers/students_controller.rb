class StudentsController < ApplicationController
  before_action :set_student, only: %i[show edit update destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path, notice: "Student has been created succesfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to student_path(@student), notice: "Student has been updated succesfully"
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path, notice: "Student has been deleted succesfully"
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :date_of_birth, :address, :contact, :photo)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
