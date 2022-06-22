class Survivor < ApplicationRecord

  scope :sorted_by_name, -> { order(:name) } 

  scope :abduction_filter, -> { where ("abduction = true") }

end
