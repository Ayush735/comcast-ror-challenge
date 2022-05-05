# frozen_string_literal: true

# Dec: migration
class CreateApples < ActiveRecord::Migration[6.0]
  def change
    create_table :apples do |t|
      t.string :variety
      t.timestamps
    end
  end
end
