class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # 下記がアソシエーションと呼ばれるコードの例
  # 他のモデルと紐付けをし、重複を避けるためにpost_imegesと関連付けた
  has_many :post_images, dependent: :destroy

end
