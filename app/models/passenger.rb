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

class Passenger < ActiveRecord::Base
  belongs_to :flight
end
