# frozen_string_literal: true

# Desc: Its Apple class
class Apple < ApplicationRecord
  #   Task-1
  include Blending
  #   Task-2
  belongs_to :basket
end
