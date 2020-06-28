class FoodCategory < ApplicationRecord
  has_many :food_stall_categories
  has_many :food_items
  has_one_attached :audio

  after_create :add_sound_bite # Run on create

  private

  def add_sound_bite
    # UpdateUserJob.perform_later(self.id)
    sound_type = 'category'
    AddSoundBiteJob.perform_later(sound_type, self.id)
  end
end
