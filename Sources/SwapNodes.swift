import Foundation

class Solution {
    func SwapNodes(_ head: ListNode?, _ k: Int) -> ListNode? {
        var fast = head
        var slow =  head
        var slowTemp: ListNode?
        var k = k
        
        while k != 0 {
            fast = fast?.next
            k -= 1
        }
        
        slowTemp = fast
        
        while fast?.next != nil {
            fast = fast?.next
            slow = slow?.next
        }
        
        if let tempVal = slow?.val, let slowTempVal = slowTemp?.val {
            slow?.val = slowTempVal
            slowTemp?.val = tempVal
        }
         
        return head
    }
    
}
