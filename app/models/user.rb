class User < ActiveRecord::Base

  has_many :events
  has_many :profiles
  has_secure_password

end
