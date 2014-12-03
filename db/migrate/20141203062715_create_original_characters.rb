class CreateOriginalCharacters < ActiveRecord::Migration
  def change
    create_table :original_characters do |t|
      t.string   :title
      t.string   :name
      t.integer  :age
      t.string   :hair_color
      t.string   :eye_color
      t.string   :personality
      t.references :user

      t.timestamps
    end
  end
end
