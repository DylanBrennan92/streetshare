require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @user = User.new(email: "jakesmyth@gmail.com", username: "jakes42", password: "password", password_confirmation: "password")
  end

  test "User has email" do
    @user.email = nil?
    assert @user.valid?
  end



end
