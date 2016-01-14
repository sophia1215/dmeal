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

require 'rails_helper'

RSpec.describe OrgProduct, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
