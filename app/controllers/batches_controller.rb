class BatchesController < ApplicationController
  def index
    @batches = Batch.all
  end

  def show
    @batch = Batch.find(params[:id])

    excellent_total = 0
    good_total = 0
    bad_total = 0

    total_students = @batch.students.length

    if (total_students > 0)
      @batch.students.each do |student|
        last_evaluation = student.dailyevaluations.order(:date).last
        if last_evaluation
          if last_evaluation.evaluation == "excellent"
            excellent_total += 1
          elsif last_evaluation.evaluation == "good"
            good_total += 1
          else
            bad_total += 1
          end
        end
      end

      @excellent = (excellent_total * 100) / total_students
      @good = (good_total * 100) / total_students
      @bad = (bad_total * 100) / total_students
    end
  end

  def new
    @batch = Batch.new
  end

  def create
    batch_params = params.require(:batch).permit(:name, :start, :end)
    @batch = Batch.new(batch_params)
    if @batch.save
       redirect_to @batch, notice: "Batch successfully saved!"
    else
       render 'new', notice: "Error while saving batch!"
    end
  end

  def ask_question
    @batch = Batch.find(params[:batch_id])
    @student = @batch.random_student()
    @last_evaluation = @student.dailyevaluations.order(:date).last

    if (@student.nil?)
      @batch.students.sample
    end

    render 'askquestion'
  end
end
