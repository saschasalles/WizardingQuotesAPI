import Fluent
import Vapor

final class Quote: Model, Content {
    static let schema = "quotes"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "title")
    var title: String
    
    @Field(key: "authorFirstName")
    var authorFirstName: String
    
    @Field(key: "authorLastName")
    var authorLastName: String
    
    @Timestamp(key: "created_at", on: .create)
    var createdAt: Date?

    init() { }

    init(id: UUID? = nil, title: String, authorFirstName: String, authorLastName: String) {
        self.id = id
        self.title = title
        self.authorLastName = authorLastName
        self.authorLastName = authorLastName
    }
}
