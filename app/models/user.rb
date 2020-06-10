class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :received_vouches, class_name: 'Vouch', foreign_key: 'vouchee_id'
  has_many :given_vouches, class_name: 'Vouch', foreign_key: 'voucher_id'

end
