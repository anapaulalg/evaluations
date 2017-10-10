require 'rails_helper'

describe "View the list of batches" do
  before { login_as user }

  let(:user) { create :user, email: "current@user.com" }


  it "shows all batches" do
    visit root_path
    expect(page).to have_text("Batches")
  end
end
