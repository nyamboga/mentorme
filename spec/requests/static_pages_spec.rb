require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do 
  	it "should have the content 'MentorMe'" do 
  		visit '/static_pages/home'
  		page.should have_selector('h1', text: 'MentorMe')
  	end

  	it "should have the tile 'Home'" do 
  		visit '/static_pages/home'
  		page.should have_selector('title',
  															text: "MentorMe | Home")
  	end
  end

  describe "About Page" do 
  	it "should have the content 'About'" do 
  		visit '/static_pages/about'
  		page.should have_selector('h1', text: 'About')
  	end

  	it "should have the tile 'Home'" do
  		visit '/static_pages/about'
  		page.should have_selector('title',
  															text: "MentorMe | About")
  	end
  end
end
