class PostImage < ApplicationRecord
  
  #アソシエーション（post_imegesと紐付け） 
  belongs_to :user
  attachment :image
  
end
