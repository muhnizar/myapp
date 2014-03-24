require 'spec_helper'

describe "StaticPages" do
  subject {page}
  
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading)}
    it { should have_title(full_title(page_title))}
  end
  
  #home
  describe "home page" do
    before { visit root_path }
    #it { should have_content('My App') }
    #it { should have_title(full_title('')) }
    
    let(:heading) {'My App'}
    let(:page_title) {''}    
    it_should_behave_like "all static pages"
    
    it { should_not have_title('| home') }
  end

  #help
  describe "help page" do
    before {visit help_path}
    #it { should have_content("Help") }
    #it { should have_title(full_title('Help')) }
    
    let(:heading) {'Help'}
    let(:page_title) {'Help'}    
    it_should_behave_like "all static pages" 
  end

  #about
  describe "about page" do
    before {visit about_path}
    #it { should have_content("About")}
    #it { should have_title(full_title('About Us')) }
    
    let(:heading) {'About'}
    let(:page_title) {'About Us'}    
    it_should_behave_like "all static pages"
  end

  #contact
  describe "contact page" do
    before {visit contact_path}
    let(:heading) {'Contact'}
    let(:page_title) {'Contact'}    
    it_should_behave_like "all static pages"
  end
  
  it "should have the right link on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
  end

end
