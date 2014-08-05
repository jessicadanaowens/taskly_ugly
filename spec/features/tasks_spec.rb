require 'rails_helper'
require 'capybara/rails'

feature "Tasks" do
  scenario "user can add a task" do
    create_tasks
    create_user
    login_user
    first(:link, "+ Add Task").click
  end
end