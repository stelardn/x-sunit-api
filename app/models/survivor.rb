class Survivor < ApplicationRecord

  scope :sorted_by_name, -> { order(:name) } 

  scope :abduction_filter, -> { where ("abduction = true") }

  # def generate_ab_reports
  #   @report = Survivor.find_by_sql('SELECT * FROM public.survivors WHERE abduction = true ORDER BY asc')
  # end

end
