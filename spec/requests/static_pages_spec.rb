require 'spec_helper'

describe "Static Pages" do
  stub = "Ruby on Rails Tutorial Sample App"
  describe 'Home page' do
    it "should have the content 'sample app'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    
    it "should have title #{stub} | Home" do
      visit '/static_pages/home'
      expect(page).to have_title("#{stub} | Home")
    end
  end
  
  describe 'Help Page' do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "shoulve have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{stub} | Help")
    end
    
  end
  
  describe 'About Page' do
    it "should have About Us" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    
    it "should hav ethe right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{stub} | About")
    end
  end
  
  
end