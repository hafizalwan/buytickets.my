class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :about
      t.text :details_1
      t.text :details_2
      t.text :directions
      t.text :how_to
      t.text :activity_info
      t.text :refund_policies
      t.string :location_map
      t.string :location_title
      t.integer :pricing
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
