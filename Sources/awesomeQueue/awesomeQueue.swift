public struct awesomeQueue<T> {
    private let list: LinkedList<T> = LinkedList()
    
    public init() { }
    
    public var count: Int {
        return list.count
    }
    
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
