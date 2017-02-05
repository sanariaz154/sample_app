require 'rails_helper'

RSpec.feature "Static Pages", type: :feature do
  feature "Home page" do
    it "should have content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end
end
