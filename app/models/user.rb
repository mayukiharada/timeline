class User < ApplicationRecord
  #Page Start
  #アソシエーション(1:多)
  has_many :Pages
  #Page End

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
