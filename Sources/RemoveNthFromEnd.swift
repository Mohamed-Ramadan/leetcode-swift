import Foundation

// https://leetcode.com/problems/remove-nth-node-from-end-of-list/

class RemoveNthFromEndSolution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var nodes: [ListNode?] = []
        var current = head
        
        while current != nil {
            nodes.append(current)
            current = current?.next
        }
        
        nodes[nodes.count-n-1]?.next = nodes[n]?.next

        return head
    }
    
    func removeNthFromEnd2(_ head: ListNode?, _ n: Int) -> ListNode? {
        var fast: ListNode? = head
        var slow: ListNode? = head
        var n = n
        
        while n != 0 {
            fast = fast?.next
            n -= 1
        }
         
        while fast?.next != nil {
            fast = fast?.next
            slow = slow?.next
        }
        
        var temp = slow?.next
        slow?.next = slow?.next?.next
        temp = nil
        
        return head
    }
}
