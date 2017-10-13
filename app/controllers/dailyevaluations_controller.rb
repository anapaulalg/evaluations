class DailyevaluationsController < ApplicationController
  before_action :get_batch, :get_student

  def index
    @dailyevaluations = Dailyevaluation.all
  end

  def show
    @dailyevaluation = Dailyevaluation.find(params[:id])
  end

  def new
    @dailyevaluation = @student.dailyevaluations.where(date: Date.today).first
    
    if (@dailyevaluation.nil?)
      @dailyevaluation = Dailyevaluation.new
      @dailyevaluation.student = @student
      @dailyevaluation.student.batch = @batch
      @dailyevaluation.date = Date.today
    else
      redirect_to edit_batch_student_dailyevaluation_path(@batch, @student, @dailyevaluation)
    end
  end

  def create
    @dailyevaluation = Dailyevaluation.new(dailyevaluation_params)
    @dailyevaluation.student = Student.find(params[:student_id])
    if @dailyevaluation.save
      next_student = @batch.students.where('id > ?', @student.id).first
      if (next_student.nil?)
        next_student = @batch.students.first
      end
      if params[:save_next] && next_student
        redirect_to batch_student_path(@dailyevaluation.student.batch.id, next_student.id), notice: "Daily evaluation successfully saved, going for next student!"
      else
        redirect_to @dailyevaluation.student.batch, notice: "Daily evaluation successfully saved!"
      end
    else
       render 'new', notice: "Error while saving saving daily evaluation!"
    end
  end

  def edit
    @dailyevaluation = Dailyevaluation.find(params[:id])
  end

  def update
    @dailyevaluation = Dailyevaluation.find(params[:id])

    @dailyevaluation.update_attributes(dailyevaluation_params) 
    if @dailyevaluation.save
      redirect_to batch_student_path(@dailyevaluation.student.batch.id, @dailyevaluation.student.id), notice: "Daily evaluation successfully updated!"
    else
      render 'edit', notice: "Error while saving daily evaluation!"
    end
  end

  private

  def get_batch
    @batch = Batch.find(params[:batch_id])
  end

  def get_student
    @student = Student.find(params[:student_id])
  end

  def dailyevaluation_params
    params.require(:dailyevaluation).permit(:evaluation, :date, :remark, :batch_id, :student_id)
  end
end
