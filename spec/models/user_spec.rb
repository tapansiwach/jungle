require 'rails_helper'

RSpec.describe User, type: :model do

  it "requires an email field" 
  it "ensures that the email is unique, isn't already in the database" 
  it "requires a name field" 
  it "requires a password field" 
  it "requires a password_confirmation field" 
  it "requires that password and password_confirmation fields match" 
  it "is valid if a name, unique email, and matching password & password_confirmation fields are provided" 
  
end
