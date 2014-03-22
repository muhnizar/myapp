require 'spec_helper'

describe "StaticPages" do
  subject {page}
  
  #home
  describe "home page" do
    before { visit root_path }
    it { should have_content('My App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| home') }
  end

  #help
  describe "help page" do
    before {visit help_path}
    it { should have_content("Help") }
    it { should have_title(full_title('Help')) } 
  end

  #about
  describe "about page" do
    before {visit about_path}
    it { should have_content("About")}
    it { should have_title(full_title('About Us')) }
  end

  #contact
  describe "contact page" do
    before {visit contact_path}
    it { should have_content("Contact") }
    it { should have_title(full_title('Contact')) } 
  end

end
