class Api::AbductionsController < ApplicationController
  before_action :set_abduction, only: %i[ show ]
  
  # GET /abductions
  def index

    @abducted = Survivor.all.abduction_filter

    abductions = @abducted.count * 1.0

    non_abductions = (Survivor.all.count - abductions) * 1.0

    abduction_rate = abductions / (non_abductions + abductions) * 100

    non_abduction_rate = non_abductions / Survivor.all.count * 100

    render json: "Current abduction percentage: #{abduction_rate}%.
    \n Non-abduction percentage: #{non_abduction_rate}%."
  end

end
