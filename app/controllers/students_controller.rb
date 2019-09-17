require 'pry'

class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student

  end

  def activate
    @student = Student.find(params[:id])
  
    if @student.active == false
      @student.active = true

    else
      @student.active = false
    end
      @student.save
    render "show.html.erb"
  end
  
  private

    def set_student
      @student = Student.find(params[:id])
    end
    




end