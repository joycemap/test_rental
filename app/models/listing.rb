class Listing < ApplicationRecord
    belongs_to :user
   has_many_attached :photos
   validates :user_id, :title, :address, :lat, :lng, :price,:home_type_id, :description, :max_guests, presence: true
    validate :image_type

 def thumbnail input
return self.photos[input].variant(resize: '400x400!').processed
end

private

def image_type
if photos.attached? == false
    errors.add(:photos, "are missing")
end

photos.each do |photo|
    if !photo.content_type.in?(%('image/jpeg image/png'))
        errors.add(:photos, 'needs to be a JPEG or PNG or JPG')
    end
end

end
end
