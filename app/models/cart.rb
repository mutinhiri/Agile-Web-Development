class Cart < ApplicationRecord
  # BEST PRACTICE: Logic shared with future Orders is extracted to a concern
  include Itemizable
end