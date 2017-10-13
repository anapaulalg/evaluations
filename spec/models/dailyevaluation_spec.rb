require 'rails_helper'

describe "Validations" do
  it "enter with the evaluation" do
    dailyevaluation = Dailyevaluation.new()
    dailyevaluation.valid?
    expect(dailyevaluation.errors).to have_key(:evaluation)
  end

  it "enter with the date of the evaluation" do
    dailyevaluation = Dailyevaluation.new()
    dailyevaluation.valid?
    expect(dailyevaluation.errors).to have_key(:date)
  end
end
