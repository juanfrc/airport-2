# == Schema Information
#
# Table name: arrivals
#
#  id         :integer          not null, primary key
#  flight_id  :integer
#  date       :datetime
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ArrivalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
