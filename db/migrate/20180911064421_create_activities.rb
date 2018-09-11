class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :about
      t.text :details_1
      t.text :details_2
      t.text :how_to_directions
      t.text :how_to_seats
      t.text :activity_info
      t.text :refund_policies
      t.string :location_map
      t.string :location_title
      t.integer :base_price
      t.integer :adult_price
      t.integer :child_price
      t.integer :my_adult_price
      t.integer :my_child_price
      t.integer :int_adult_price
      t.integer :int_child_price
      t.boolean :is_base_price
      t.boolean :is_adult_price
      t.boolean :is_child_price
      t.boolean :is_my_adult
      t.boolean :is_my_child
      t.boolean :is_int_adult
      t.boolean :is_int_child
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
