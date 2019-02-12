class Tweet < ApplicationRecord
  mount_uploader :image_name, ImageUploader
end
