# frozen_string_literal: true

# Desc: Its Basket class
class Basket < ApplicationRecord
  has_many :apples, dependent: :destroy

  def self.add_apple_to_basket(varity, apple)
    variety = varity
    total_apples = apple
    apple_finished = false
    if total_apples > 0
      baskets = Basket.left_joins(:apples) # .where('apples.variety = ?', variety)
      baskets.each do |b|
        basket_capacity = b.capacity
        filled_apples = b.apples.count
        vacent_capacity = basket_capacity - filled_apples
        vacent_capacity.times do
          if total_apples > 0
            b.apples.create(variety: variety)
            fill_rate = (b.apples.count * 100) / basket_capacity
            b.update(fill_rate: fill_rate)
            total_apples -= 1
          else
            apple_finished = true
            break
          end
        end
        break if apple_finished
      end
      if total_apples > 0
        "All baskets are full. We couldn't find the place for #{total_apples} apples"
      end
    end
  end
end
