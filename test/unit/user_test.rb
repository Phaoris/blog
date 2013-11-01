require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "a user should enter a first_name" do
    user = User.new
    assert !user.save
    assert !user.errors[:first_name].empty?
  end

  test "a user should enter a last_name" do
    user = User.new
    assert !user.save
    assert !user.errors[:last_name].empty?
  end

  test "a user should enter a profile_name" do
    user = User.new
    assert !user.save
    assert !user.errors[:profile_name].empty?
  end

  test "a user should have a unique profile name" do
  	user = User.new
  	user.profile_name = "mounirbennacer"
  	user.email = "bigshoppa@gmail.com"
  	user.first_name ="mounir"
  	user.last_name = "bennacer"
  	assert !user.save
  	puts user.errors.inspect
  	assert !user.errors[:profile_name].empty?
  end

  test "a user should have a profile name whitout spaces" do
  	user = User.new
  	user.profile_name = "Profile name without spaces"

  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  	assert !user.errors[:profile_name].include?("must be formatted correctly.")
  end
end
