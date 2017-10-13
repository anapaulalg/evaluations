require 'rails_helper'

describe "Validations" do
  it "enter with the email" do
    user = User.new()
    user.valid?
    expect(user.errors).to have_key(:email)
  end

  it "enter with the password" do
    user = User.new()
    user.valid?
    expect(user.errors).to have_key(:password)
  end
end
