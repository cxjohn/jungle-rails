class User < ActiveRecord::Base
  has_secure_password
  validates :first_name,
            :last_name,
            :password_confirmation,
            presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8 } 
# there's more code here but I'll let you try that yourself first
end