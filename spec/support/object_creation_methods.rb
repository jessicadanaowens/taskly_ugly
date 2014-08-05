def create_user(overrides = {})
  User.create!({
    name: 'Some User',
    email: 'user@example.com',
    password: 'password',
    password_confirmation: 'password'
  }.merge(overrides))
end

def login_user
  visit signin_path
  fill_in "Email", with: "user@example.com"
  fill_in "Password", with: "password"
  click_on "Login"
end

def create_tasks
  TaskList.create!(name: "Work List")
  TaskList.create!(name: "Household Chores")
end