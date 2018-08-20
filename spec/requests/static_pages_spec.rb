require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    before do
      visit root_path
    end
    it "should have the h1 'Sample App'" do
      page.should have_selector('h1', text: 'Sample App')
    end

    it "should have the base title" do
      page.should have_selector('title',
                                text: "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      page.should_not have_selector('title', text: '| Home')
    end
  end

  describe "Help Page" do
    before do
      visit help_path
    end
    it "should have the content 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end

    it "Should have the title 'Help'" do
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About Page" do
    before do
      visit about_path
    end
    it "should have the content 'About Us'" do
      page.should have_selector('h1', :text => 'About Us')
    end

    it "Should have the title 'About Us'" do
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact page" do
    before do
      visit contact_path
    end
    it "should have the h1 Contact" do
      page.should have_selector('h1', tex: "Contact")
    end

    it "should have the title 'Contact'" do
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
