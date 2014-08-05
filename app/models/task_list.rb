class TaskList < ActiveRecord::Base
  validates_presence_of :name, {message: "Your task list could not be created"}
end