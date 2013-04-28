require 'spec_helper'

describe "StaticPages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home Page" do
    it "should have the header 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Home')
    end
    it "shoud have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title} | Home")
    end
  end

  describe "Help Page" do
    it "should have the header 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end

  describe "About Page" do
    it "should have the header 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} | About Us")
    end
  end

  describe "Contact Page" do
    it "should have the header 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} | Contact Us")
    end
  end

end