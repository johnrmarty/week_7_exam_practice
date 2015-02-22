class User < ActiveRecord::Base

	has_secure_password


  validates :first_name, presence: true, allow_blank: false
  validates :last_name, presence: true, allow_blank: false
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
