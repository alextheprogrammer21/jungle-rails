require 'rails_helper'

RSpec.describe User, type: :model do

    describe 'Validations' do
      subject { described_class.new(
        first_name: "dfgsfg",
        last_name: "sdhsd",
        email: "testsehsh500@gmail.com",
        password: "test",
        password_confirmation: "test"
      ) }
  
      it "works if everything is filled out" do
        expect(subject).to be_valid
      end
  
      it "validates that password and pass confirmation is required" do
        subject.password = nil
        expect(subject).to_not be_valid
      end
  
      xit "validates that a unique email is required" do
        subject.email = 'test@test.com'
        expect(subject).to_not be_valid
      end
  
      xit "validates that Email, first name, and last name are required" do
        subject.first_name = nil
        subject.last_name = nil
        subject.email = nil
        expect(subject).to_not be_valid
      end

      it "validates that password must have a minimum length when a user account is being created" do
        subject.password = 'a'
        expect(subject).to_not be_valid
      end

    end
  end
  