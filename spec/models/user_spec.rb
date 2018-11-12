require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    let(:user) {User.create!(
      first_name: "David",
      last_name: "Son",
      email: "son.hyun.uk@hotmail.com",
      password: "password",
      password_confirmation: "password"
      )}
    it 'should save correctly to db' do
      expect(user).to be_valid
    end
    it 'should validate first name' do
      user.first_name = nil
      expect {user.save!}.to raise_error(ActiveRecord::RecordInvalid)
    end
    it 'should validate last name' do
      user.last_name = nil
      expect {user.save!}.to raise_error(ActiveRecord::RecordInvalid)
    end
    it 'should validate email' do
      user.email = nil
      expect {user.save!}.to raise_error(ActiveRecord::RecordInvalid)
    end
    it 'should validate password' do
      user.password = nil
      expect {user.save!}.to raise_error(ActiveRecord::RecordInvalid)
    end
    it 'should validate duplicate email' do
      user.save!
      user2 = User.new(
        first_name: "David",
        last_name: "Son",
        email: "son.hyun.uk@hotmail.com",
        password: "password",
        password_confirmation: "password"
        )
      expect {user2.save!}.to raise_error(ActiveRecord::RecordInvalid)
    end
    it 'should validate duplicate email with different cases' do
      user.save!
      user2 = User.new(
        first_name: "David",
        last_name: "Son",
        email: "son.HYUN.uk@hotmail.com",
        password: "password",
        password_confirmation: "password"
        )
      expect {user2.save!}.to raise_error(ActiveRecord::RecordInvalid)
    end
    it 'should validate password less then 8 chars' do
      user.password = 'pass'
      user.password_confirmation = 'pass'
      expect {user.save!}.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
  describe '.authenticate_with_credentials' do
    let(:user) {User.create!(
      first_name: "David",
      last_name: "Son",
      email: "son.hyun.uk@hotmail.com",
      password: "password",
      password_confirmation: "password"
      )}
    it 'should authenticate password' do
      user.save!
      authenticate = User.authenticate_with_credentials('son.hyun.uk@hotmail.com', 'password')
      expect(authenticate).to be_truthy
      authenticate2 = User.authenticate_with_credentials('son.hyun.uk@hotmail.com', 'pass')
      expect(authenticate2).to be_nil
    end
    it 'should authenticate email' do
      user.save!
      authenticate = User.authenticate_with_credentials('  son.hyun.uk@hotmail.com  ', 'password')
      expect(authenticate).to be_truthy
      authenticate2 = User.authenticate_with_credentials('son.HYUN.uk@hotmail.com', 'password')
      expect(authenticate2).to be_truthy
    end
  end
end
