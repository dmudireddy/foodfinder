class Item < ActiveRecord::Base
  attr_accessible :image, :item_name, :location_id, :store_name
  belongs_to :location
end
