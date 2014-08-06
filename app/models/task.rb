class Task < ActiveRecord::Base
  belongs_to :task_list
  validates_presence_of :description, {message: "Your task could not be created"}
  validates :due_date, :presence => true,
            unless: Proc.new {|a| a.due_date < Time.now}
  validates_presence_of :assigned_to_id

  def self.format_date(date_hash)
    Date.new(date_hash[:year].to_i,date_hash[:month].to_i,date_hash[:day].to_i)
  end

  def assigned_to_user(id)
    @user = User.find(id)
    @user.name
  end

end