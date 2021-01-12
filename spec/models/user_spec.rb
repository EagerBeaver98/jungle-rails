require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it 'creates user obect' do
      @user = User.new
      expect(@user).to be_present
    end
    it 'must have a password' do
      @user = User.new(password: 'bacon', password_confirmation: 'bacon')
      expect(@user.password).to be_present
    end
    it 'must have unique email address' do
      @user1 = User.new(email: 'test@test.com')
      @user2 = User.new(email: 'test@test.com')
      expect().to be_nil
    end
    
  end
end
