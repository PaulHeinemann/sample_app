require 'spec_helper'


describe Micropost do
  
  before(:each) do
    @user = Factory(:user)
    @att = { :content => "lorum ipsum" }
  end
  
  it "should create and new instance with valid attribute" do
    @user.microposts.create!(@attr)
  end
  
  describe "user association" do
    
    before(:each) do
      @micropost = @user.microposts.create(@attr)
    end
    
    it "should have a user attribute" do
      @micropost.should respond_to(:user)
    end
    
    it "should have the right associated user" do
      @micropost.user_id.should == @user.id
      @micropost.user.should == @user
    end
  end
end
