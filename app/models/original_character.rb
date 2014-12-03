class OriginalCharacter < ActiveRecord::Base
  # Remember to create a migration!
  validates :title, :name, :age, :hair_color, :eye_color, :personality, presence: true
  belongs_to :user
end
