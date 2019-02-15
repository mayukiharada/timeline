class Tweet < ApplicationRecord
  #Tweet Start
  #アソシエーション(1:多)
  belongs_to :page
  #Tweet End

  mount_uploader :image_name, ImageUploader
end
