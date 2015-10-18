require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit posts_path
    click_link 'New Blog'
    fill_in "Title", :with => "TestBlog"
    fill_in "Author", :with => "TestBlogger"
    fill_in "Images", :with => "TestBlogImage"
    fill_in "Body", :with => "Test blog body content"
    click_on "Create Post"
    expect(page).to have_content 'TestBlog'
  end
end
