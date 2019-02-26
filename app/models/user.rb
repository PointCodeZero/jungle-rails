class User < ActiveRecord::Base

  validates_uniqueness_of :email, case_sensitive: false, presence: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, length: { minimum: 3 }
  validates :password_confirmation, presence: true

  has_many :reviews 

  has_secure_password

  def self.authenticate_with_credentials(email, password)
    new_email = email.downcase
    final_email = new_email.strip unless new_email.nil?  # remove whitespaces
    user = User.find_by_email(final_email)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
  
end
