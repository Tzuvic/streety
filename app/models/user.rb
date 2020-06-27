class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :received_vouches, class_name: 'Vouch', foreign_key: 'vouchee_id'
  has_many :given_vouches, class_name: 'Vouch', foreign_key: 'voucher_id'
  # has_many :food_stalls, through: :favorite_foodstall
  has_many :favorite_foodstalls
  has_many :recommendations
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
