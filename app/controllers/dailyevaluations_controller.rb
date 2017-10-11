class DailyevaluationsController < ApplicationController

  def index
    @dailyevaluations = Dailyevaluation.all
  end

  def show
    @dailyevaluation = Dailyevaluation.find(params[:id])
  end

end
