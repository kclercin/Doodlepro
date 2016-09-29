require 'test_helper'

class DoodlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doodle = doodles(:one)
  end

  test "should get index" do
    get doodles_url
    assert_response :success
  end

  test "should get new" do
    get new_doodle_url
    assert_response :success
  end

  test "should create doodle" do
    assert_difference('Doodle.count') do
      post doodles_url, params: { doodle: { description: @doodle.description, location: @doodle.location, name: @doodle.name } }
    end

    assert_redirected_to doodle_url(Doodle.last)
  end

  test "should show doodle" do
    get doodle_url(@doodle)
    assert_response :success
  end

  test "should get edit" do
    get edit_doodle_url(@doodle)
    assert_response :success
  end

  test "should update doodle" do
    patch doodle_url(@doodle), params: { doodle: { description: @doodle.description, location: @doodle.location, name: @doodle.name } }
    assert_redirected_to doodle_url(@doodle)
  end

  test "should destroy doodle" do
    assert_difference('Doodle.count', -1) do
      delete doodle_url(@doodle)
    end

    assert_redirected_to doodles_url
  end
end
