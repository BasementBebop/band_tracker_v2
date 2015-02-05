require "spec_helper"

describe Venue do
  it {should have_and_belong_to_many :bands}

  it "validates the presence of a venue name" do
    venue = Venue.new({:name => ""})
    expect(venue.save).to eq false
  end

  it "capitalizes letters if titleized name" do
    venue = Venue.create({:name => "somewhere"})
    expect(venue.name).to eq "Somewhere"
  end
end
