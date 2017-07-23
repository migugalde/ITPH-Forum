# frozen_string_literal: true

class MockNotifier
  mattr_accessor :users_notified_of_new_post, :users_notified_of_new_private_post

  def key
    'mock'
  end

  def human_name
    'By mock'
  end

  def new_post(_post, users)
    self.users_notified_of_new_post = users
  end

  def new_private_post(_post, users)
    self.users_notified_of_new_private_post = users
  end

  def resetted
    self.users_notified_of_new_post = []
    self.users_notified_of_new_private_post = []
    self
  end
end
