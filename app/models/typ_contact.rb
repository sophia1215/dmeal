# == Schema Information
#
# Table name: typ_contacts
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TypContact < ActiveRecord::Base
  has_many :org_contacts

  validates :name, presence: true
end
