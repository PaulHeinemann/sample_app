require 'spec_helper'

describe "LayoutLinks" do
    
  it "should have a Home page at '/'" do
       get '/'
       responce.should have _selector('title', :content => "Home")
     end
      
  it "should have a Contact page at '/contact'" do
        get '/contact'
        responce.should have_selector('title', :content => "Contact")
     end
      
  it "should have a About page at '/about'" do
        get '/about'
        responce.should have_selector('title', :content => "About")
     end
      
  it "should have a Help page at '/help'" do
        get '/help'
        responce.should have_selector('title', :content => "Help")
     end
      
      
end
