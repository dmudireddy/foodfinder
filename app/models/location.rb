class Location < ActiveRecord::Base
  attr_accessible :city, :gmaps, :latitude, :longitude, :state
  has_many :items
  geocoded_by :city
  validates_presence_of :state,:city
  
  after_validation :geocode
  acts_as_gmappable :latitude => "lat", :longitude=> "lng"

  def gmaps4rails_address
   "#{city},#{state}"
  end
  def gmaps4rails_title
    " Title : #{self.city}" 
  end
   def gmaps4rails_infowindow

     @it = self.items
     # "<img src= '/public/item.image '"
    for @i in @it
      @item_n = @i.item_name
    @item_image = @i.image
       end
      # @i.each do |i|
       # "#{i.item_name}"
     # end
     "<img1 src='#{@item_image}' width='50' height='50'> #{@item_n}"
     # "#{@item_n}"  
    # "#{@i[0].item_name}"   
     # "#{self.city}"
    end
     def gmaps4rails_marker_picture
       
    {
      
    "picture" =>  @item_image, # image_path column has to contain something like '/assets/my_pic.jpg'.
     "width" => 50, #beware to resize your pictures properly
     "height" => 50, #beware to resize your pictures properly
    "marker_anchor" => [ 35, 35]
    }
end
  
end
