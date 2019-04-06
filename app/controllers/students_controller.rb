class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # newpaage
  end

  def enroll
    puts params[:student]
    first_name = params['first_name']
    last_name = params['last_name']
    @newStudent = Student.create(first_name: first_name, last_name: last_name)
    redirect_to(@newStudent)
  end
end
