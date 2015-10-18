class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags

  validates :author, :title, :body, :images, :presence => true
end
