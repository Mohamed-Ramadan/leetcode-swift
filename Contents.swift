
import Foundation

func createLinkedList(of array: [Int]) -> ListNode? {
    var head: ListNode?
    var current: ListNode?
    for item in array {
        if head == nil {
            current = ListNode(item)
            head = current
        } else {
            current?.next = ListNode(item)
        }
    }
    
    return head
}

var linkedList = createLinkedList(of: [1,2,3,4,5])
while linkedList != nil {
    print("LL: \(linkedList?.val)")
    linkedList = linkedList?.next
}
let s = middleoftheLinkedListSolution.middleNode(linkedList)
print(s?.val ?? -1)
