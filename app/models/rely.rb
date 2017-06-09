class Rely < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  belongs_to :item
end
