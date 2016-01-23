# == Schema Information
#
# Table name: org_companies
#
#  id               :integer          not null, primary key
#  name             :string           not null
#  avatar           :string
#  description      :text
#  verification_doc :string
#  verified         :boolean
#  typ_company_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class OrgCompany < ActiveRecord::Base
  has_and_belongs_to_many :org_contacts
  has_many :org_persons
  has_many :org_products
  has_one :typ_fee #
  belongs_to :typ_company, foreign_key: "typ_company_id"

  validates :typ_company, presence: true
  validates :name, presence: true
  
  accepts_nested_attributes_for :typ_company
  accepts_nested_attributes_for :org_contacts #
  accepts_nested_attributes_for :typ_fee

  mount_uploader :avatar, AvatarUploader

end
