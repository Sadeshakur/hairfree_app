class User < ActiveRecord::Base

  has_many :events
  has_one  :profile
  has_one  :account
  has_secure_password

end
