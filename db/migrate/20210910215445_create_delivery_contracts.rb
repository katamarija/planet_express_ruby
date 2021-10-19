class CreateDeliveryContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :delivery_contracts do |t|
      t.integer :external_id
      t.text :item
      t.integer :crew_size
      t.text :destination

      t.timestamps
    end
  end
end
