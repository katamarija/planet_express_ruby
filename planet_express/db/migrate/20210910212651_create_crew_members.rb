class CreateCrewMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :crew_members do |t|
      t.text :name

      t.timestamps
    end
  end
end
