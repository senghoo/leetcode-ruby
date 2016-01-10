require 'spec_helper'
require_relative '../app/8_string_to_integer'
RSpec.describe "string to integer" do
  it "covert string to integer" do
    expect( my_atoi "123").to eq(123)
  end

  it "process negative" do
    expect( my_atoi "-123").to eq(-123)
  end

  it "return edgeval when out of range" do
    expect( my_atoi "2147483648").to eq(2147483647)
    expect( my_atoi "-2147483648").to eq(-2147483648)
  end

  it "pass being + symbol" do
    expect( my_atoi "+123").to eq(123)
  end

  it "stop 0 if worng arg" do
    expect( my_atoi "  -0012a42").to eq(-12)
  end
end
