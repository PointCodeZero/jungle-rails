require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it "should be valid" do
      user = User.new(
        :first_name => 'Lucas',
        :last_name => 'Cruz',
        :email => 'lucas@gmail.com',
        :password => '12345',
        :password_confirmation => '12345'
      )
      expect(user).to be_valid
    end

    it "should not be valid without a first_name" do
      user = User.new(
        :first_name => nil,
        :last_name => 'Cruz',
        :email => 'lucas@gmail.com',
        :password => '12345', 
        :password_confirmation => '12345'
      )
      expect(user).to_not be_valid
    end

    it "should not be valid without a last_name" do
      user = User.new(
        :first_name => 'Lucas',
        :last_name => nil,
        :email => 'lucas@gmail.com',
        :password => '12345', 
        :password_confirmation => '12345'
      )
      expect(user).to_not be_valid
    end

    it "should not be valid without an email" do
      user = User.new(
        :first_name => 'Lucas',
        :last_name => 'Cruz',
        :email => nil,
        :password => '12345', 
        :password_confirmation => '12345'
      )
      expect(user).to_not be_valid
    end

    it "should not be valid without a password" do
      user = User.new(
        :first_name => 'Lucas',
        :last_name => 'Cruz',
        :email => 'lucas@gmail.com',
        :password => nil, 
        :password_confirmation => nil
      )
      expect(user).to_not be_valid
    end

    it "should not be valid without password confirmation" do
      user = User.new(
        :first_name => 'Lucas',
        :last_name => 'Cruz',
        :email => 'lucas@gmail.com',
        :password => '12345', 
        :password_confirmation => nil
      )
      expect(user).to_not be_valid
    end

    it "should have matching password and password confirmation" do
      password = User.create(
        :password => '12345', 
        :password_confirmation => '12346'
        )
      expect(password).to_not be_equal(password.password_confirmation)
    end

    it "should not save without unique email" do
      user1 = User.create(
        :first_name => 'Lucas',
        :last_name => 'Cruz',
        :email => 'lucas@gmail.com',
        :password => '12345',
        :password_confirmation => '12345'
      )
      user2 = User.create(
        :first_name => 'Lucas',
        :last_name => 'Oliveira',
        :email => 'Lucas@GMAIL.com',
        :password => '6789',
        :password_confirmation => '6789'
      )
      expect(user2).to_not be_valid
    end
    
  end
end
