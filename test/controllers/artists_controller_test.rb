require 'test_helper'

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get api_v1_artists_url(format: :json)
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count', 0) do
      post api_v1_artists_url(format: :json), params: { artist: { name: @artist.name } }
    end

    assert_difference('Artist.count') do
      post api_v1_artists_url(format: :json), params: { artist: { name: "New and Unknown Name" } }
    end

    assert_response :created
  end

  test "should show artist" do
    get api_v1_artist_url(@artist, format: :json)
    assert_response :success
  end
end
