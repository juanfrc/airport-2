# == Schema Information
#
# Table name: flights
#
#  id         :integer          not null, primary key
#  number     :integer
#  airline_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Flight < ActiveRecord::Base
  belongs_to :airline
  has_one :departure, dependent: :destroy
  has_one :arrival, dependent: :destroy
  has_many :passengers, dependent: :destroy

  validates :airline, presence: true
  validates_numericality_of :number, only_integer: true, greater_than: 0

  accepts_nested_attributes_for :departure, :arrival
end
