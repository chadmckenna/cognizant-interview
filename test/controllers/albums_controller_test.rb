require 'test_helper'

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album = albums(:one)
  end

  test "should get index" do
    get api_v1_albums_url(format: :json)
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_album_url(format: :json)
    assert_response :success
  end

  test "should create album" do
    assert_difference('Album.count') do
      post api_v1_albums_url(format: :json), params: { album: { artist_id: @album.artist_id, genre_id: @album.genre_id, name: @album.name, year: @album.year } }
    end

    assert_response :created
  end

  test "should show album" do
    get api_v1_album_url(@album, format: :json)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_album_url(@album, format: :json)
    assert_response :success
  end

  test "should update album" do
    patch api_v1_album_url(@album, format: :json), params: { album: { artist_id: @album.artist_id, genre_id: @album.genre_id, name: @album.name, year: @album.year } }
    assert_response :success
  end

  test "should destroy album" do
    assert_difference('Album.count', -1) do
      delete api_v1_album_url(@album, format: :json)
    end

    assert_response :no_content
  end
end
