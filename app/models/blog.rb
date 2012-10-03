class Blog < ActiveRecord::Base
  attr_accessible :blog_image, :content, :title
  has_many :comments
end
