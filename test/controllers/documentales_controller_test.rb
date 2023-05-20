require "test_helper"

class DocumentalesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get documentales_index_url
    assert_response :success
  end

  test "should get create" do
    get documentales_create_url
    assert_response :success
  end

  test "should get new" do
    get documentales_new_url
    assert_response :success
  end
end
