require 'spec_helper'

describe "StaticPages" do

  describe "home page" do

    it "should have the content 'my app' " do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content("My App")
    end

    it "should have the base title " do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails tutorial my app")
    end
    
    it "should not have a custome page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| home")
    end

  end

  describe "help page" do

    it "should have the content 'help' "do
      visit '/static_pages/help'
      expect(page).to have_content("Help")
    end
    
    it "should have the base title " do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails tutorial my app")
    end
    
  end

  describe "about page" do
    
    it "should have the content 'about'" do
      visit '/static_pages/about'
      expect(page).to have_content("About")
    end
    
    it "should have the base title " do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails tutorial my app")
    end
         
  end

end
