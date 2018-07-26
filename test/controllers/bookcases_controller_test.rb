require 'test_helper'

class BookcasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookcase = bookcases(:one)
  end

  test "should get index" do
    get bookcases_url, as: :json
    assert_response :success
  end

  test "should create bookcase" do
    assert_difference('Bookcase.count') do
      post bookcases_url, params: { bookcase: { book_id: @bookcase.book_id, evaluation: @bookcase.evaluation, reader_id: @bookcase.reader_id } }, as: :json
    end

    assert_response 201
  end

  test "should show bookcase" do
    get bookcase_url(@bookcase), as: :json
    assert_response :success
  end

  test "should update bookcase" do
    patch bookcase_url(@bookcase), params: { bookcase: { book_id: @bookcase.book_id, evaluation: @bookcase.evaluation, reader_id: @bookcase.reader_id } }, as: :json
    assert_response 200
  end

  test "should destroy bookcase" do
    assert_difference('Bookcase.count', -1) do
      delete bookcase_url(@bookcase), as: :json
    end

    assert_response 204
  end
end
