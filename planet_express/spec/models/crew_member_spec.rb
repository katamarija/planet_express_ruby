require "rails_helper"

describe "CrewMember" do
  it "creates a crew member with expected attributes" do
    fry = CrewMember.create(name: "Fry")
    expect(fry.name).to eq("Fry")
    expect(fry.schedules).not_to eq(nil)
  end
end
