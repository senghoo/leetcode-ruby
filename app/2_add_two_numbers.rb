#Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  def add(s1, s2, p=0)
    return nil unless s1 or s2 or p != 0
    s1 ||= ListNode.new 0
    s2 ||= ListNode.new 0
    v = s1.val + s2.val + p
    n = ListNode.new v % 10
    n.next = add(s1.next, s2.next, v >= 10 ? 1 : 0)
    n
  end
  add l1, l2
end
