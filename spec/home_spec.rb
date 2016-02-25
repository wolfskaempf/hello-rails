require 'spec_helper'

feature "visiting the homepage" do
  scenario "the visitor sees the blogs name" do
    visit root_path
    expect(page).to have_text("blog of truth")
  end
end
