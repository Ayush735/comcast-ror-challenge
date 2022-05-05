# frozen_string_literal: true

# Dec: migration
class CreateOranges < ActiveRecord::Migration[6.0]
  def change
    create_table :oranges do |t|
      t.string :variety
      t.timestamps
    end
  end
end
