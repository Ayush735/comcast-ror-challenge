# frozen_string_literal: true

# Dec: Migration for create Orange model.
class CreateOranges < ActiveRecord::Migration[6.0]
  def change
    create_table :oranges do |t|
      t.string :variety
      t.timestamps
    end
  end
end
