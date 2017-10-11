class DailyevaluationsController < ApplicationController
  def index
    @dailyevaluations = Dailyevaluation.all
  end
end
