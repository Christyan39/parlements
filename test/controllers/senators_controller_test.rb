require "test_helper"

class SenatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @senator = senators(:one)
  end

  test "should get index" do
    get senators_url
    assert_response :success
  end

  test "should get new" do
    get new_senator_url
    assert_response :success
  end

  test "should create senator" do
    assert_difference("Senator.count") do
      post senators_url, params: { senator: { name: @senator.name, photo: @senator.photo, title: @senator.title } }
    end

    assert_redirected_to senator_url(Senator.last)
  end

  test "should show senator" do
    get senator_url(@senator)
    assert_response :success
  end

  test "should get edit" do
    get edit_senator_url(@senator)
    assert_response :success
  end

  test "should update senator" do
    patch senator_url(@senator), params: { senator: { name: @senator.name, photo: @senator.photo, title: @senator.title } }
    assert_redirected_to senator_url(@senator)
  end

  test "should destroy senator" do
    assert_difference("Senator.count", -1) do
      delete senator_url(@senator)
    end

    assert_redirected_to senators_url
  end
end
