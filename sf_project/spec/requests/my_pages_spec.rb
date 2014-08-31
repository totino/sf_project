require 'spec_helper'

describe "MyPages" do

  describe "Home page" do
    it "should have the content 'Home'" do
      visit '/my_pages/home'
      page.should have_content('Home')
    end
  end
  describe "Test page" do
    it "Should have the content 'test'" do
      visit '/my_pages/test'
      page.should have_content('Test')
    end
  end
end
