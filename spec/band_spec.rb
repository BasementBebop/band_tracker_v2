require("spec_helper")

describe(Band) do
  it {should have_and_belong_to_many :venues}

  it("validates the presence of a band name") do
    band = Band.new({:name => ""})
    expect(band.save).to eq false
  end

  it("capitalizes letters if titleized name") do
    band = Band.create({:name => "sean"})
    expect(band.name).to eq "Sean"
  end
end
