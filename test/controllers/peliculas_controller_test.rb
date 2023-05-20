require "test_helper"

class PeliculasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get peliculas_index_url
    assert_response :success
  end

  test "should get create" do
    get peliculas_create_url
    assert_response :success
  end

  test "should get new" do
    get peliculas_new_url
    assert_response :success
  end
end
