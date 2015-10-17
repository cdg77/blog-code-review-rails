class Post < ActiveRecord::Base
  validates :author, :title, :body, :images, :presence => true
end
