class PagesController < ApplicationController
  
  
  def home
    @title = "Home"
  end
  
  def explore
    @title = "Explore"
  end
  
  def about
    @title = "About Us"
  end
  
  def community
    @title = "Community"
  end
  
end