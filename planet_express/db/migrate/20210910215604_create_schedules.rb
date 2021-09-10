class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.date :depart_date
      t.date :delivery_date
      t.belongs_to :delivery_contract

      t.timestamps
    end
  end
end
