# frozen_string_literal: true

# Des: Migration to create Basket model.
class CreateBaskets < ActiveRecord::Migration[6.0]
  def change
    create_table :baskets do |t|
      t.integer :capacity, default: 0
      t.string :fill_rate
      t.timestamps
    end
  end
end
