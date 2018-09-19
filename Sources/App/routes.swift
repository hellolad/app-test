import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
//    // Basic "Hello, world!" example
//    router.get("hello") { req in
//        return "Hello, world!"
//    }
//
//    // Example of configuring a controller
//    let todoController = TodoController()
//    router.get("todos", use: todoController.index)
//    router.post("todos", use: todoController.create)
//    router.delete("todos", Todo.parameter, use: todoController.delete)
    
    let helloController = HelloController()
    router.get("greet", use: helloController.greet)
    router.get("greet2", use: helloController.greet2)
    router.get("greetSelf", use: helloController.greetSelf)
    router.get("userId", Int.parameter) { req -> Int in
        let id = try req.parameters.next(Int.self)
        return id
    }
}
