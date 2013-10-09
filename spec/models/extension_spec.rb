require "spec_helper"

describe Extension do
  it "has no extensions in the database" do
    expect(Extension).to have(:no).records
    expect(Extension).to have(0).records
  end

  it "has one record" do
    Extension.create!(:name => "Test App")
    expect(Extension).to have(1).record
  end

  it "counts only records that match a query" do
    Extension.create!(:name => "Test App")
    expect(Extension.where(:name => "Test App")).to have(1).record
    expect(Extension.where(:name => "Non App")).to have(0).records
  end

end