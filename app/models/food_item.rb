class FoodItem < ApplicationRecord
  belongs_to :food_category
  belongs_to :user
  has_many :menus
  has_many :food_stalls, through: :menu
  has_one_attached :audio

  after_create :add_sound_bite # Run on create

  private

  def add_sound_bite
    # UpdateUserJob.perform_later(self.id)
    AddSoundBiteJob.perform_later(self.id)
  end
end
