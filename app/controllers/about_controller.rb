class AboutController < ActionController::Base

  def about
    render layout: "application", locals: {current_user: nil}
  end
  
end