# frozen_string_literal: true

# Des: Migration for adding basket reference into apple.
class AddBasketReferenceIntoApple < ActiveRecord::Migration[6.0]
  def change
    add_reference :apples, :basket, index: true
  end
end
