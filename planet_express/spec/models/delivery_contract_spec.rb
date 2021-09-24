require "rails_helper"

describe "DeliveryContract" do
  it "creates a delivery contract with expected attributes" do
    contract = DeliveryContract.create(external_id: 1234, item: "Lug Nuts", crew_size: 3, destination: "Chapek 9")
    expect(contract.external_id).to eq(1234)
    expect(contract.item).to eq("Lug Nuts")
    expect(contract.crew_size).to eq(3)
    expect(contract.destination).to eq("Chapek 9")
  end
end
