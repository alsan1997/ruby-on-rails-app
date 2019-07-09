require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "email validation" do
  	assert_not User.new(name: 'name', password: 'password').save
  end

  test "name validation" do
  	assert_not User.new(email: 'email', password: 'password').save
  end

  test "password validation" do
  	assert_not User.new(name: 'name', email: 'email').save
  end

  test "user should have" do
  	assert User.new(name: 'name', email: 'email', password: 'password').save
  end
end
