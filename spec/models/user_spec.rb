require 'rails_helper'

RSpec.describe User, type: :model do

  it "requires an email field" do
    user = User.new({
      # email: "name@example.com",
      name: "Mowgli",
      password: "junglebook",
      password_confirmation: "junglebook"
    })
    expect(user).to_not be_valid
  end
  it "ensures that the email is unique, isn't already in the database" 
  it "requires a name field" do
    user = User.new({
      email: "name@example.com",
      # name: "Mowgli",
      password: "junglebook",
      password_confirmation: "junglebook"
    })
    expect(user).to_not be_valid
  end
  it "requires a password field" do
    user = User.new({
      email: "name@example.com",
      name: "Mowgli",
      # password: "junglebook",
      password_confirmation: "junglebook"
    })
    expect(user).to_not be_valid
  end
  it "requires a password_confirmation field" do
    user = User.new({
      email: "name@example.com",
      name: "Mowgli",
      password: "junglebook",
      # password_confirmation: "junglebook"
    })
    expect(user).to_not be_valid 
  end
  it "requires that password and password_confirmation fields match" 
  it "is valid if a name, unique email, and matching password & password_confirmation fields are provided" do
    user = User.new({
      email: "name@example.com",
      name: "Mowgli",
      password: "junglebook",
      password_confirmation: "junglebook"
    })
    expect(user).to be_valid 
  end

end
