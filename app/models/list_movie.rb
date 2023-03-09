class ListMovie < ApplicationRecord
  belongs_to :movielist
  belongs_to :movie
end
