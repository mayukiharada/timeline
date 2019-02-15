class Page < ApplicationRecord
  #Page Start
  #アソシエーション(1:多)
  belongs_to :user
  #Page End

  #Tweet Start
  #アソシエーション(1:多)
  has_many :tweets
  #Tweet End
end
