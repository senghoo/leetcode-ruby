require 'spec_helper'
require_relative '../app/1_two_sum'
RSpec.describe "two_sum" do
  it "Given an array of integers, find two numbers such that they add up to a specific target number." do
    expect(two_sum [2, 7, 11, 15], 9).to match_array [1, 2]
  end
end
