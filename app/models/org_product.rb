# == Schema Information
#
# Table name: org_products
#
#  id                     :integer          not null, primary key
#  org_company_id         :integer
#  typ_category_id        :integer
#  typ_subcategory_id     :integer
#  name                   :string           not null
#  description            :text             not null
#  weight_in_grams        :decimal(, )      default(0.0), not null
#  price                  :decimal(5, 2)    not null
#  available_quantity     :integer          not null
#  expiry_date            :datetime         not null
#  latitude               :float            not null
#  longitude              :float            not null
#  online_order_available :boolean          not null
#  tax_amount             :float            default(0.0)
#  image                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class OrgProduct < ActiveRecord::Base
  belongs_to :org_company, foreign_key: "org_company_id"
  belongs_to :typ_category, foreign_key: "typ_category_id"
  belongs_to :typ_subcategory, foreign_key: "typ_subcategory_id"

  validates :typ_category, presence: true
  validates :typ_subcategory, presence: true
  validates :name, presence: true
  validates :weight_in_grams, numericality: true
  validates :available_quantity, presence: true, numericality: { only_integer: true }
  validates :expiry_date, presence: true
  validates_inclusion_of :online_order_available, in: [true,false]

  mount_uploader :image, ImageUploader

  searchkick locations: ["location"]

  def search_data
    attributes.merge(
      location: [latitude, longitude],
      org_company_name: org_company(&:name)
    )
  end
end
