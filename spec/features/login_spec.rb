require 'rails_helper'

describe "View log in page" do
  it "show log in" do
    visit root_path
    expect(page).to have_text("Log In")
  end
end
