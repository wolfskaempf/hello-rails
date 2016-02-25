describe "visiting the #index", :type => :feature do
  scenario "the user sees the blog's name" do
    visit root_path
    expect(page).to have_text("blog of truth")
  end
  scenario "the user sees a signup link" do
    visit root_path
    expect(page).to have_link("Signup")
  end
  scenario "the user sees a login link" do
    visit root_path
    expect(page).to have_link("Login")
  end
end
