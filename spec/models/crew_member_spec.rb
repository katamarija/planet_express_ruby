require "rails_helper"

describe "CrewMember" do
  it "creates a crew member with expected attributes" do
    fry = CrewMember.create(name: "Fry")
    expect(fry.name).to eq("Fry")
    expect(fry.schedules).to be_empty
  end
end
