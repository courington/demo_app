require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "should have the header 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "shoud have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe "Help Page" do
    it "should have the header 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Help')
    end
  end

  describe "About Page" do
    it "should have the header 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | About Us')
    end
  end

  describe "Contact Page" do
    it "should have the header 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Contact Us')
    end
  end

end