class User < ActiveRecord::Base

  validates_uniqueness_of :email, case_sensitive: false, presence: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_many :reviews 

  has_secure_password
  
end
