require 'test_helper'

class ScratchControllerTest < ActionDispatch::IntegrationTest
  test "should get back" do
    get scratch_back_url
    assert_response :success
  end

end
