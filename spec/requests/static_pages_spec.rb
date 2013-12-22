require 'spec_helper'


describe "Static Pages" do
  stub = "Ruby on Rails Tutorial Sample App"
  describe 'Home page' do
    before { visit root_path }
    subject { page }

    it { should have_content('Sample App') }
    it { should_not have_title(full_title '| Home' ) }
    it { should have_title full_title('') }
  end
  
  describe 'Help Page' do
    before { visit help_path }
    subject { page } 
    
    it {should have_content 'Help' }
    it {should have_title(full_title 'Help') }    
  end
  
  describe 'About Page' do
    before { visit about_path }
    subject { page }
    it {should have_content "About" }
    it {should have_title(full_title 'About')}
  end 
  
  describe 'Contact Page' do
    before {visit contact_path }
    subject {page}
    it { should have_content 'Contact' }
    it {should have_title full_title 'Contact'}
  end
end