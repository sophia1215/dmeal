class CreateTypSubcategories < ActiveRecord::Migration
  def change
    create_table :typ_subcategories do |t|
      t.string :name
      t.belongs_to :typ_category
      t.timestamps null: false
    end
  end
end
