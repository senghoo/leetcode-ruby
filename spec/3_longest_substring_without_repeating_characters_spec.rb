require 'spec_helper'
require_relative '../app/3_longest_substring_without_repeating_characters'
RSpec.describe "longest_substring_without_repeating_characters" do
  it "Given a string, find the length of the longest substring without repeating characters." do
    expect(length_of_longest_substring 'abcabcbb').to eq(3)
    expect(length_of_longest_substring 'bbbbb').to eq(1)
    expect(length_of_longest_substring 'abcdefg').to eq(7)
    expect(length_of_longest_substring 'aab').to eq(2)
    expect(length_of_longest_substring 'abba').to eq(2)
  end
end
