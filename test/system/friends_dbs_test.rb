require "application_system_test_case"

class FriendsDbsTest < ApplicationSystemTestCase
  setup do
    @friends_db = friends_dbs(:one)
  end

  test "visiting the index" do
    visit friends_dbs_url
    assert_selector "h1", text: "Friends Dbs"
  end

  test "creating a Friends db" do
    visit friends_dbs_url
    click_on "New Friends Db"

    fill_in "Email", with: @friends_db.email
    fill_in "First name", with: @friends_db.first_name
    fill_in "Last name", with: @friends_db.last_name
    fill_in "Phone", with: @friends_db.phone
    fill_in "Twitter", with: @friends_db.twitter
    click_on "Create Friends db"

    assert_text "Friends db was successfully created"
    click_on "Back"
  end

  test "updating a Friends db" do
    visit friends_dbs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @friends_db.email
    fill_in "First name", with: @friends_db.first_name
    fill_in "Last name", with: @friends_db.last_name
    fill_in "Phone", with: @friends_db.phone
    fill_in "Twitter", with: @friends_db.twitter
    click_on "Update Friends db"

    assert_text "Friends db was successfully updated"
    click_on "Back"
  end

  test "destroying a Friends db" do
    visit friends_dbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friends db was successfully destroyed"
  end
end
