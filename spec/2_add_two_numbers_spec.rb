require 'spec_helper'
require_relative '../app/2_add_two_numbers'

RSpec.describe "add_two_numbers" do
  it "Add the two numbers and return it as a linked list." do
    n13 = ListNode.new 3
    n12 = ListNode.new 4
    n11 = ListNode.new 2
    n11.next = n12
    n12.next = n13
    n23 = ListNode.new 4
    n22 = ListNode.new 6
    n21 = ListNode.new 5
    n21.next = n22
    n22.next = n23
    r1 = add_two_numbers n11, n21
    expect(r1.val).to eq 7
    expect(r1.next.val).to eq 0
    expect(r1.next.next.val).to eq 8
  end
end
