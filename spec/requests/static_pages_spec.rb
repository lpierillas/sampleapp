require 'spec_helper'

describe "Static pages" do

  #Décris la page Home
  describe "Home page" do

    it "should have the content 'Sample app'" do
	  #Lorsque l'on visite /static_pages/home
      visit '/static_pages/home'
	  #Les mots 'Sample app' doivent apparaitre dans le contenu 
      expect(page).to have_content('Sample app')
    end
	
	it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end
  
  #Décris la page help
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
	
	it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end
  
  #Décris la page About
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
	
	it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
