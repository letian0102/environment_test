require "application_system_test_case"

class BookCollectionsTest < ApplicationSystemTestCase
  setup do
    @book_collection = book_collections(:one)
  end

  test "visiting the index" do
    visit book_collections_url
    assert_selector "h1", text: "Book Collections"
  end

  test "creating a Book collection" do
    visit book_collections_url
    click_on "New Book Collection"

    fill_in "Author", with: @book_collection.author
    fill_in "Price", with: @book_collection.price
    fill_in "Publishdate", with: @book_collection.publishdate
    fill_in "Title", with: @book_collection.title
    click_on "Create Book collection"

    assert_text "Book collection was successfully created"
    click_on "Back"
  end

  test "updating a Book collection" do
    visit book_collections_url
    click_on "Edit", match: :first

    fill_in "Author", with: @book_collection.author
    fill_in "Price", with: @book_collection.price
    fill_in "Publishdate", with: @book_collection.publishdate
    fill_in "Title", with: @book_collection.title
    click_on "Update Book collection"

    assert_text "Book collection was successfully updated"
    click_on "Back"
  end

  test "destroying a Book collection" do
    visit book_collections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book collection was successfully destroyed"
  end
end
