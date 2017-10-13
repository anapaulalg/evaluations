require 'rails_helper'

describe "Validations" do
  it "enter with the name of the student" do
    student = Student.new()
    student.valid?
    expect(student.errors).to have_key(:name)
  end

  it "enter with the link of the picture of the student" do
    student = Student.new()
    student.valid?
    expect(student.errors).to have_key(:image)
  end
end
