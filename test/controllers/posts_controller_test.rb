require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference("Post.count") do
      post posts_url, params: { post: { title: "Valid New Title", content: "This is valid content for a new blog post that meets the minimum length requirement" } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should not create invalid post" do
    assert_no_difference("Post.count") do
      post posts_url, params: { post: { title: "Short", content: "Too short" } }
    end

    assert_response :unprocessable_entity
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { title: "Updated Valid Title", content: "This is updated valid content that meets the minimum length requirement" } }
    assert_redirected_to post_url(@post)
  end

  test "should not update post with invalid data" do
    patch post_url(@post), params: { post: { title: "Short", content: "Too short" } }
    assert_response :unprocessable_entity
  end

  test "should destroy post" do
    assert_difference("Post.count", -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end

