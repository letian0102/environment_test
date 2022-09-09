require "test_helper"

class BookCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_collection = book_collections(:one)
  end

  test "should get index" do
    get book_collections_url
    assert_response :success
  end

  test "should get new" do
    get new_book_collection_url
    assert_response :success
  end

  test "should create book_collection" do
    assert_difference('BookCollection.count') do
      post book_collections_url, params: { book_collection: { author: @book_collection.author, price: @book_collection.price, publishdate: @book_collection.publishdate, title: @book_collection.title } }
    end

    assert_redirected_to book_collection_url(BookCollection.last)
  end

  test "should show book_collection" do
    get book_collection_url(@book_collection)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_collection_url(@book_collection)
    assert_response :success
  end

  test "should update book_collection" do
    patch book_collection_url(@book_collection), params: { book_collection: { author: @book_collection.author, price: @book_collection.price, publishdate: @book_collection.publishdate, title: @book_collection.title } }
    assert_redirected_to book_collection_url(@book_collection)
  end

  test "should destroy book_collection" do
    assert_difference('BookCollection.count', -1) do
      delete book_collection_url(@book_collection)
    end

    assert_redirected_to book_collections_url
  end
end
