require 'rails_helper'

RSpec.describe "Static Pages", type: :request do
  describe "Home page" do
    it "should have content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
   
    it "should have the base title" do
     visit '/static_pages/home'
       page.should have_selector('title',
         :text => "Ruby on Rails")
end


  end


describe "About page" do
    it "should have content 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
     # page.should have_selector('title', :text => 'About')
    end

  end

describe "Help page" do
it "should have the content 'Help'" do
visit '/static_pages/help'
page.should have_content('Help')
end
end

describe "contact page" do
it "should have the content 'contact'" do
visit '/static_pages/contact'
page.should have_content('contact')
end
end

end
