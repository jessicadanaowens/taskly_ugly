class TaskList < ActiveRecord::Base
  has_many :tasks
  validates_presence_of :name, {message: "Your task list could not be created"}
end