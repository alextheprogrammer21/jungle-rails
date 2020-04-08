require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

    # SETUP
    before :each do
      @category = Category.create! name: 'Apparel'
  
      10.times do |n|
        @category.products.create!(
          name:  Faker::Hipster.sentence(3),
          description: Faker::Hipster.paragraph(4),
          quantity: 10,
          price: 64.99
        )
      end
    end
  
  scenario "Clicking on a product will take them to a products detail page" do
    # ACT
    visit root_path
    first(:button, 'Add').click
                # VERIFY
            expect(page).to have_text 'My Cart (1)'
    # DEBUG
    save_screenshot
  end

end