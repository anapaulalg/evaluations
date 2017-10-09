class BatchesController < ApplicationController

  def index
    @batches = Batch.all
  end

  def show
    @batch = Batch.find(params[:id])
  end

  def new
    @batch = Batch.new
  end

  def create
    batch_params = params.require(:batch).permit(:name, :start, :end)
    @batch = Batch.new(batch_params)
    if @batch.save
       redirect_to @batch
    else
       render 'new'
    end
  end
end
