require 'rails_helper'


RSpec.describe Product, type: :model do
subject {
  Product.new(name: "Test", price: 10, quantity: 100, category: @category)
}
  describe 'Validations' do
    #validates product 

    it "validates that a name is required" do
      subject.name = nil
      subject.quantity = 100 
      subject.price = 10
      subject.category = @category
      expect(subject).to_not be_valid
    end

    it "validates that a quantity is required" do
      subject.name = "Test"
      subject.quantity = nil 
      subject.price = 10
      subject.category = @category
      expect(subject).to_not be_valid
    end

    it "validates that a price is required" do
      subject.name = "Test"
      subject.quantity = 100 
      subject.price = nil
      subject.category = @category
      expect(subject).to_not be_valid
    end

    it "validates that a category is required" do
      subject.name = "Test"
      subject.quantity = 100 
      subject.price = 10
      subject.category = nil
      expect(subject).to_not be_valid
    end
  end
end
