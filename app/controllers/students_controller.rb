class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.batch = Batch.find(params[:batch_id])
    if @student.save
       redirect_to @student.batch
    else
       render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update_attributes(student_params)
      redirect_to @student.batch
    else
      render 'edit'
    end
  end

  def destroy
    @batch = Batch.find(params[:batch_id])
    @student = @batch.students.find(params[:id])
    @student.destroy

    redirect_to @batch
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :image)
  end
end
