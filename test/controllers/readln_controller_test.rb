require "test_helper"

class ReadlnControllerTest < ActionDispatch::IntegrationTest
  test "should get rezero" do
    get readln_rezero_url
    assert_response :success
  end
end
