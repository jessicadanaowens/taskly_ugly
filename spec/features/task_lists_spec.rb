require 'rails_helper'
require 'capybara/rails'

feature 'Task lists' do

  scenario 'User can view task lists' do
    create_user email: "user@example.com"
    TaskList.create!(name: "Work List")
    TaskList.create!(name: "Household Chores")

    visit signin_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
    expect(page).to have_content("Work List")
    expect(page).to have_content("Household Chores")
  end

  scenario "User can see the about page" do
    visit signin_path
    click_on "About"
    expect(page).to have_content("Nunc vestibulum lorem lacus")
  end

  scenario "User can add a task list" do
    create_user
    login_user
    click_on "+ Add Task List"
    fill_in "Name", with: "Understand Rails"
    click_on "Create Task List"
    expect(page).to have_content "Task List was created successfully!"
    expect(page).to have_content "Understand Rails"
  end

  scenario "user gets error for empty task list name" do
    create_user
    login_user
    click_on "+ Add Task List"
    click_on "Create Task List"
    expect(page).to have_content "Your task list could not be created"
  end

  scenario "user can edit a task list" do
    create_tasks
    create_user
    login_user
  end

end