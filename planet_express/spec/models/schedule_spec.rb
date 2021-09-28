require "rails_helper"

describe "Schedule" do
  it "creates a schedule with expected attributes" do
    schedule = Schedule.create(depart_date: "3000-01-01", delivery_date: "3000-01-04", delivery_contract_id: 1234)
    expect(schedule.depart_date.to_s).to eq("3000-01-01")
    expect(schedule.delivery_date.to_s).to eq("3000-01-04")
    expect(schedule.delivery_contract_id).to eq(1234)
    expect(schedule.crew_members).to be_empty
  end
end
