require "rails_helper"

describe "LocationRequester" do
  it "performs successful get to endpoint" do
    name = "earth"
    response = LocationRequester.get_api_response(name: name)
    expect(response["name"].class).to eq(String)
    expect(response["coordinates"].class).to eq(Hash)
    expect(response["coordinates"]["x"]).to eq(Int)
    expect(response["coordinates"]["y"]).to eq(Int)
    expect(response["coordinates"]["z"]).to eq(Int)
  end
end
