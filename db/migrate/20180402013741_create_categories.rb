class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
			t.text :name
			t.text :description
			t.integer :cbm_id
		end
  end
end
