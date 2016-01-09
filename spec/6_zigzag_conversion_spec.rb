require 'spec_helper'
require_relative '../app/6_zigzag_conversion'
RSpec.describe "zigzag_conversion" do
  it "zigzag conversion" do
    expect(convert "PAYPALISHIRING", 3).to eq("PAHNAPLSIIGYIR")
  end
end
