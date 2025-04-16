require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "should not save post without title" do
    post = Post.new(content: "Valid content that is long enough")
    assert_not post.save, "Saved the post without a title"
  end

  test "should not save post without content" do
    post = Post.new(title: "Valid Title")
    assert_not post.save, "Saved the post without content"
  end

  test "should not save post with short title" do
    post = Post.new(title: "Hi", content: "Valid content that is long enough")
    assert_not post.save, "Saved the post with a too short title"
  end

  test "should not save post with short content" do
    post = Post.new(title: "Valid Title", content: "Too short")
    assert_not post.save, "Saved the post with too short content"
  end

  test "should save valid post" do
    post = Post.new(title: "Valid Title", content: "This is valid content that meets the minimum length requirement")
    assert post.save, "Could not save a valid post"
  end
end

