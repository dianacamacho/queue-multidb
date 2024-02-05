class UserJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)
    p "*** Welcome #{user.email} ***"
  end
end
