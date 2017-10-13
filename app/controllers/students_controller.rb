class StudentsController < ApplicationController
  before_action :get_batch
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @student.batch = Batch.find(params[:batch_id])
  end

  def create
    @student = Student.new(student_params)
    @student.batch = Batch.find(params[:batch_id])
    if @student.save
       redirect_to @student.batch, notice: "Student successfully saved!"
    else
       render 'new', notice: "Error while saving student"
    end
  end

  def edit
    @student = Student.find(params[:id])
    @student.batch = Batch.find(params[:batch_id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update_attributes(student_params)
      redirect_to @student.batch, notice: "Student successfully updated!"
    else
      render 'edit', notice: "Error while saving student"
    end
  end

  def destroy
    @batch = Batch.find(params[:batch_id])
    @student = @batch.students.find(params[:id])
    @student.destroy

    redirect_to @batch, notice: "Student successfully deleted!"
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def get_batch
    @batch = Batch.find(params[:batch_id])
  end

  def student_params
    params.require(:student).permit(:name, :image, :batch_id)
  end
end
