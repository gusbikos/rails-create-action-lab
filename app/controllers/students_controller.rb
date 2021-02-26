class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    # @student = Student.create(student_params)
    # redirect_to student_path(@student)
    session[:form_params] = params.inspect 
    redirect_to new_student_path
  end

  private 

  def set_student 
    @student = Student.find(params[:id])
  end

end
