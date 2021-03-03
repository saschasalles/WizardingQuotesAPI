import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("lab") { req -> String in
        return "Hello dear Apple Lab Student"
    }
    
    try app.register(collection: QuotesController())
}
