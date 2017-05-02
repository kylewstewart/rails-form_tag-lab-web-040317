class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  # def allowed_params
  #   params.require(:student).permit(:first_name, :last_name)
  #   redirect_to students_path
  # end

  def create
    Student.create(student_parmas)
    # Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end

  private

  def student_parmas
    params.require(:student).permit(:first_name, :last_name)
  end

end
