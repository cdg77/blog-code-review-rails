class Post < ActiveRecord::Base
  has_many :tags

  validates :author, :title, :body, :images, :presence => true
end
