class DailyevaluationsController < ApplicationController

  def index
    @dailyevaluations = Dailyevaluation.all
  end

  def show
    @dailyevaluation = Dailyevaluation.find(params[:id])
  end

  def new
    @dailyevaluation = Dailyevaluation.new
  end

  def create
    @dailyevaluation = Dailyevaluation.new(dailyevaluation_params)
    @dailyevaluation.student = Student.find(params[:student_id])
    if @dailyevaluation.save
       redirect_to @dailyevaluation.student
    else
       render 'new'
    end
  end

  def edit
    @dailyevaluation = Dailyevaluation.find(params[:id])
  end

  def update
    @dailyevaluation = Dailyevaluation.find(params[:id])

    if @dailyevaluation.update_attributes(dailyevaluation_params)
      redirect_to batch_student_path(@dailyevaluation.student.batch.id, @dailyevaluation.student.id)
    else
      render 'edit'
    end
  end

  private

  def set_dailyevaluation
    @dailyevaluation = Dailyevaluation.find(params[:id])
  end

  def dailyevaluation_params
    params.require(:dailyevaluation).permit(:evaluation, :date, :remark)
  end
end
