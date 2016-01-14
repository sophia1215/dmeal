# == Schema Information
#
# Table name: typ_subcategories
#
#  id              :integer          not null, primary key
#  name            :string
#  typ_category_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe TypSubcategory, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
