class Comment < ActiveRecord::Base
  attr_accessible :blog_id, :content, :name
  belongs_to :blog
end
