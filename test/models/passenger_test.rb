# == Schema Information
#
# Table name: passengers
#
#  id         :integer          not null, primary key
#  flight_id  :integer
#  name       :string
#  passport   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PassengerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
