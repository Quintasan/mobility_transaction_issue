class Survey < ApplicationRecord
  extend Mobility
  translates :welcome_text, :finish_text
end
