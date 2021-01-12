require "test_helper"

class FriendsDbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friends_db = friends_dbs(:one)
  end

  test "should get index" do
    get friends_dbs_url
    assert_response :success
  end

  test "should get new" do
    get new_friends_db_url
    assert_response :success
  end

  test "should create friends_db" do
    assert_difference('FriendsDb.count') do
      post friends_dbs_url, params: { friends_db: { email: @friends_db.email, first_name: @friends_db.first_name, last_name: @friends_db.last_name, phone: @friends_db.phone, twitter: @friends_db.twitter } }
    end

    assert_redirected_to friends_db_url(FriendsDb.last)
  end

  test "should show friends_db" do
    get friends_db_url(@friends_db)
    assert_response :success
  end

  test "should get edit" do
    get edit_friends_db_url(@friends_db)
    assert_response :success
  end

  test "should update friends_db" do
    patch friends_db_url(@friends_db), params: { friends_db: { email: @friends_db.email, first_name: @friends_db.first_name, last_name: @friends_db.last_name, phone: @friends_db.phone, twitter: @friends_db.twitter } }
    assert_redirected_to friends_db_url(@friends_db)
  end

  test "should destroy friends_db" do
    assert_difference('FriendsDb.count', -1) do
      delete friends_db_url(@friends_db)
    end

    assert_redirected_to friends_dbs_url
  end
end
