public struct awesomeQueue<T> {
    private let list: LinkedList<T> = LinkedList()

    public var isEmpty: Bool {
        return list.isEmpty
    }

    public func enqueue(_ data: T) {
        list.append(data: data)
    }

    @discardableResult
    public func dequeue() -> T? {
        return list.removeFirst()
    }

    public func clear() {
        list.clear()
    }

    @discardableResult
    public func peek() -> T? {
        return list.headData
    }
}

final public class LinkedList<T> {
    final public class Node<T> {
        var next: Node?
        let data: T

        init(data: T) {
            self.data = data
        }
    }

    private var head: Node<T>?
    private var tail: Node<T>?
    private(set) var count: Int = 0

    public var headData: T? {
        return head?.data
    }

    public var isEmpty: Bool {
        return self.count == 0
    }

    public func append(data: T) {
        let node = Node(data: data)

        if head == nil {
            head = node
            tail = node
        } else {
            tail?.next = node
            tail = node
        }

        count += 1
    }

    public func removeFirst() -> T? {
        guard let node = head else { return nil }
        
        head = head?.next
        
        if head == nil {
            tail = nil
        }
        
        count -= 1
        
        return node.data
    }
    
    public func clear() {
        head = nil
        tail = nil
        count = 0
    }
}
