require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @user = User.new(email: "jakesmyth@gmail.com", username: "jakes42", password: "password", password_confirmation: "password")
    @user = User.new(email: "peter@gmail.com", username: "peter1999", password: "password", password_confirmation: "password")
  end

  #tests for not nil fields
  test "User has email" do
    @user.email != nil?
    assert @user.valid?
  end

  test "User has username" do
    @user.username != nil?
    assert @user.valid?
  end

  test "User has password" do
    @user.password != nil?
    assert @user.valid?
  end

  test "User has password confirmation" do
    @user.password_confirmation != nil?
    assert @user.valid?
  end

  #tests for min field lengths
  test "email length must be a minimum of 6" do
    @user.email.length >=6 == true
    assert @user.valid?
  end

  test "username length must be a minimum length of 4" do
    @user.username.length >= 4 == true
    assert @user.valid?
  end

  test "password length must have a minimum length of 5" do
    @user.password.length >= 5 == true
    assert @user.valid?
  end

  test "password confirmation length must have a minimum length of 5" do
    @user.password_confirmation.length >= 5 == true
    assert @user.valid?
  end
  
  #maximum field lengths tests
  test "email length must have a maximum of 35" do
    @user.email.length <=6 == true
    assert @user.valid?
  end

  test "username length must be a maximum length of 20" do
    @user.username.length <= 20 == true
    assert @user.valid?
  end

  test "password length must have a maximum length of 80" do
    @user.password.length <= 80 == true
    assert @user.valid?
  end

  test "password confirmation length must have a maximum length of 80" do
    @user.password_confirmation.length <= 80 == true
    assert @user.valid?
  end


end
