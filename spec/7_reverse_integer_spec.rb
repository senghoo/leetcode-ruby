require 'spec_helper'
require_relative '../app/7_reverse_integer'
RSpec.describe "reverse integer" do
  it "reverse integer" do
    expect(reverse 123).to eq(321)
    expect(reverse(-123)).to eq(-321)
  end

  it "return 0 outrange integer" do
    expect(reverse 1534236469).to eq(0)
  end

end
