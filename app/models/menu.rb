class Menu < ApplicationRecord
  belongs_to :food_stall
  belongs_to :food_item
  accepts_nested_attributes_for :food_item, reject_if: :all_blank, allow_destroy: true
end
