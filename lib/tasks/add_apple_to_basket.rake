# frozen_string_literal: true

require 'rake'

namespace :apple do
  desc 'Add Apple To Basket'
  task :add_apple_to_basket, %i[varity total_apples] => :environment do |_t, args|
    variety      = args[:varity]
    total_apples = args[:total_apples].to_i
    apple_left   = false
    if total_apples.positive? && variety.present?
      baskets = Basket.includes(:apples)
      baskets.each do |b|
        basket_capacity = b.capacity
        filled_apples   = b.apples.count
        vacent_capacity = basket_capacity - filled_apples
        vacent_capacity.times do
          if total_apples.positive?
            b.apples.create(variety: variety)
            fill_rate = (b.apples.count * 100) / basket_capacity
            b.update(fill_rate: fill_rate)
            total_apples -= 1
            puts "-- Remaining Apples : #{total_apples} --"
          else
            apple_left = true
            break
          end
        end
        break if apple_left
      end
      if total_apples.positive?
        puts "All baskets are full. We couldn't find the place for #{total_apples} apples"
      end

    else
      puts 'Invalid arguments: Variety should be string & Apples should be more then zero'
    end
  end
end
