import Vapor

extension Todo {
    struct Incomming: Content {
        var title: String?
        var completed: Bool?
        var order: Int?
        
        func makeTodo() -> Todo {
            return Todo(id: nil, title: title ?? "", completed: completed ?? false, order: order)
        }
    }
}
