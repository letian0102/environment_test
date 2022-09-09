require "test_helper"

class BookcollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookcollection = bookcollections(:one)
  end

  test "should get index" do
    get bookcollections_url
    assert_response :success
  end

  test "should get new" do
    get new_bookcollection_url
    assert_response :success
  end

  test "should create bookcollection" do
    assert_difference('Bookcollection.count') do
      post bookcollections_url, params: { bookcollection: { author: @bookcollection.author, price: @bookcollection.price, publish-date: @bookcollection.publish-date, title: @bookcollection.title } }
    end

    assert_redirected_to bookcollection_url(Bookcollection.last)
  end

  test "should show bookcollection" do
    get bookcollection_url(@bookcollection)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookcollection_url(@bookcollection)
    assert_response :success
  end

  test "should update bookcollection" do
    patch bookcollection_url(@bookcollection), params: { bookcollection: { author: @bookcollection.author, price: @bookcollection.price, publish-date: @bookcollection.publish-date, title: @bookcollection.title } }
    assert_redirected_to bookcollection_url(@bookcollection)
  end

  test "should destroy bookcollection" do
    assert_difference('Bookcollection.count', -1) do
      delete bookcollection_url(@bookcollection)
    end

    assert_redirected_to bookcollections_url
  end
end
