require 'rails_helper'

describe 'the add a tag process' do
  it 'adds a new tag to a post' do
    visit post
    click_link 'Add a tag to this post'
    fill_in 'Description', :with => 'testTag'
    click_on 'Create Tag'
    expect(page).to have_content 'Tagged!'
  end
end
