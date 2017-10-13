require 'rails_helper'

describe "Validations" do
  it "enter with the name of the batch" do
    batch = Batch.new()
    batch.valid?
    expect(batch.errors).to have_key(:name)
  end

  it "enter with the start date" do
    batch = Batch.new()
    batch.valid?
    expect(batch.errors).to have_key(:start)
  end

  it "enter with the end date" do
    batch = Batch.new()
    batch.valid?
    expect(batch.errors).to have_key(:end)
  end
end
