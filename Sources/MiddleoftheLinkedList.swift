import Foundation

// https://leetcode.com/problems/middle-of-the-linked-list/



public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 

public class middleoftheLinkedListSolution {
    public static func middleNode(_ head: ListNode?) -> ListNode? {
        var current = head
        var midNode = head
        var currentIndex = 1
        
        while current != nil {
            current = current?.next
             
            if currentIndex%2 == 0 {
                midNode = midNode?.next
            }
            
            currentIndex += 1
        }
        
        return midNode
    }
}
