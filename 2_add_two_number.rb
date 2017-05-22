# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    return add(l1, l2, 0)
end

def add(l1, l2, c)
    if(l1 == nil && l2 == nil) then
        return c==0?nil:ListNode.new(c)
    end
    ln = ListNode.new(c)
    l1next = nil
    l2next = nil
    if(l1 != nil) then
        ln.val += l1.val 
        l1next = l1.next
    end
    if(l2 != nil) then
        ln.val += l2.val 
        l2next = l2.next
    end
    tc = ln.val / 10
    ln.val %= 10
    ln.next = add(l1next, l2next, tc)
    ln
end