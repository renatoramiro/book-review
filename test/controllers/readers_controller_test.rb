require 'test_helper'

class ReadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reader = readers(:one)
  end

  test "should get index" do
    get readers_url, as: :json
    assert_response :success
  end

  test "should create reader" do
    assert_difference('Reader.count') do
      post readers_url, params: { reader: { email: @reader.email, name: @reader.name } }, as: :json
    end

    assert_response 201
  end

  test "should show reader" do
    get reader_url(@reader), as: :json
    assert_response :success
  end

  test "should update reader" do
    patch reader_url(@reader), params: { reader: { email: @reader.email, name: @reader.name } }, as: :json
    assert_response 200
  end

  test "should destroy reader" do
    assert_difference('Reader.count', -1) do
      delete reader_url(@reader), as: :json
    end

    assert_response 204
  end
end
