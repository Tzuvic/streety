class Vouch < ApplicationRecord
  belongs_to :voucher, class_name: 'User'
  belongs_to :vouchee, class_name: 'User'
end
