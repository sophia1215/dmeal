# == Schema Information
#
# Table name: typ_positions
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TypPosition < ActiveRecord::Base
  has_many :org_people

  validates :name, presence: true
end
