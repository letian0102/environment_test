require "application_system_test_case"

class BookcollectionsTest < ApplicationSystemTestCase
  setup do
    @bookcollection = bookcollections(:one)
  end

  test "visiting the index" do
    visit bookcollections_url
    assert_selector "h1", text: "Bookcollections"
  end

  test "creating a Bookcollection" do
    visit bookcollections_url
    click_on "New Bookcollection"

    fill_in "Author", with: @bookcollection.author
    fill_in "Price", with: @bookcollection.price
    fill_in "Publish-date", with: @bookcollection.publish-date
    fill_in "Title", with: @bookcollection.title
    click_on "Create Bookcollection"

    assert_text "Bookcollection was successfully created"
    click_on "Back"
  end

  test "updating a Bookcollection" do
    visit bookcollections_url
    click_on "Edit", match: :first

    fill_in "Author", with: @bookcollection.author
    fill_in "Price", with: @bookcollection.price
    fill_in "Publish-date", with: @bookcollection.publish-date
    fill_in "Title", with: @bookcollection.title
    click_on "Update Bookcollection"

    assert_text "Bookcollection was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookcollection" do
    visit bookcollections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookcollection was successfully destroyed"
  end
end
