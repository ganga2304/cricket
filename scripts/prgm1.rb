# frozen_string_literal: true

require 'pry'
array = %w[apples oranges mangoes banana graphs]

def fruits(array)
  binding.pry
  puts array
end

fruits(array)
