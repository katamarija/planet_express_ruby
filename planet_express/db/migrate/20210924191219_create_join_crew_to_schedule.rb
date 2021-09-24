class CreateJoinCrewToSchedule < ActiveRecord::Migration[6.1]
  def change
    create_table :crew_members_schedules do |t|
      t.belongs_to :crew_member
      t.belongs_to :schedule

      t.timestamps
    end
  end
end
