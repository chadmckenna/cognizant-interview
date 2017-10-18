require 'test_helper'

class GenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genre = genres(:one)
  end

  test "should get index" do
    get api_v1_genres_url(format: :json)
    assert_response :success
  end

  test "should create genre" do
    assert_difference('Genre.count', 0) do
      post api_v1_genres_url(format: :json), params: { genre: { name: @genre.name } }
    end

    assert_difference('Genre.count') do
      post api_v1_genres_url(format: :json), params: { genre: { name: 'New and Unknown Name' } }
    end

    assert_response :created
  end

  test "should show genre" do
    get api_v1_genre_url(@genre, format: :json)
    assert_response :success
  end
end
