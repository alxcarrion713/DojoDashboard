class StudentsController < ApplicationController
	# renders only index and home with dojos.html.erb, all others will default unless specified to students.html.erb
layout "dojos", only: [:index, :home]

def index
  # will render with dojos.html.erb as specified above
end
def new
  @student = Student.all 
  @all_dojos = Dojo.all
  @current_dojo = Dojo.find(params[:dojo_id])
  puts @current_dojo.id
end
def create
  Student.successfully_created(params)
  redirect_to "/"
end
def show
  @dojo = Dojo.find(params[:dojo_id])
  @student = Student.find(params[:id])
end
def edit
  @all_dojos = Dojo.all
  @dojo = Dojo.find(params[:dojo_id])
  @student = Student.find(params[:id])
end
def destroy
  student = Student.find(params[:id])
  student.destroy
  redirect_to :back
end
def home
  redirect_to "/"
end
def update
  # renders with app/views/layouts/application.html.erb
  render layout: "application"
  Student.successfully_updated(params)
  redirect_to "/"
end
end