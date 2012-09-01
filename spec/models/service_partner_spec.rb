require 'spec_helper'

describe ServicePartner do
  it "should create a valid service partner" do
    build(:service_partner).should be_valid
  end
end