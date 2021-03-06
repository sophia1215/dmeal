# == Schema Information
#
# Table name: trx_order_items
#
#  id                  :integer          not null, primary key
#  name                :string           not null
#  description         :string
#  weight_in_grams     :decimal(, )      not null
#  price               :decimal(20, 4)   not null
#  available_quantity  :decimal(, )      not null
#  quantity            :integer          not null
#  expiry_date         :datetime         not null
#  image               :string           not null
#  org_company_id      :integer
#  org_product_id      :integer
#  typ_category_id     :integer
#  typ_subcategory_id  :integer
#  trx_order_id        :integer
#  shipping_address_id :integer
#  net_amount          :decimal(20, 4)
#  tax_amount          :decimal(20, 4)
#  delivery_status     :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class TrxOrderItem < ActiveRecord::Base
  belongs_to :org_company, foreign_key: "org_company_id"
  belongs_to :TrxOrder, foreign_key: "trx_order_id"
  belongs_to :OrgProduct, foreign_key: "org_product_id"
  belongs_to :ShippingAddress, foreign_key: "shipping_address_id" 
end
