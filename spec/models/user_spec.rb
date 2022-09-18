require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validation' do

    it 'validates that a new user is registered if all required fields are filled in' do
      @user = User.new(name: 'Osama', email: 'osama@osama.com', password: 'osama')
      @user.save
      expect(@user).to be_valid
      end

      it 'validates that a new user enters a name' do
        @user = User.new(name: '', email: 'bob@bob.com', password: 'bobby')
        @user.save
        expect(@user.errors.full_messages).to include("Name can't be blank")
        end
  
    




  end
end