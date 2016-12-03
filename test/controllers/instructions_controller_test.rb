require 'test_helper'

class InstructionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get instructions_new_url
    assert_response :success
  end

  test "should get create" do
    get instructions_create_url
    assert_response :success
  end

end
