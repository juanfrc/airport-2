# == Schema Information
#
# Table name: airlines
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airline < ActiveRecord::Base
	has_many :flights, dependent: :destroy
	validates :name, presence: true, length: { minimum: 3 }
end
