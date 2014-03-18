require 'spec_helper'

describe "StaticPages" do
  #home
  describe "home page" do
     before { visit root_path }
    it "should have the content 'My App' " do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      expect(page).to have_content("My App")
    end

    it "should have the base title " do
      expect(page).to have_title("Ruby on Rails tutorial my app")
    end
    
    it "should not have a custome page title" do
      expect(page).not_to have_title("| home")
    end

  end

  #help
  describe "help page" do

    it "should have the content 'help' "do
      visit help_path
      expect(page).to have_content("Help")
    end
    
    it "should have the base title " do
      visit help_path
      expect(page).to have_title("Ruby on Rails tutorial my app")
    end
    
  end

  #about
  describe "about page" do
    
    it "should have the content 'about'" do
      visit about_path
      expect(page).to have_content("About")
    end
    
    it "should have the base title " do
      visit about_path
      expect(page).to have_title("Ruby on Rails tutorial my app")
    end
         
  end

  #contact
   #about
  describe "contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content("Contact") 
    end
    
    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Ruby on Rails tutorial my app | Contact") 
    end
  end

end
