import Fluent

struct CreateQuote: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("quotes")
            .id()
            .field("title", .string, .required)
            .field("authorFirstName", .string, .required)
            .field("authorLastName", .string, .required)
            .field("created_at", .datetime)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("quotes").delete()
    }
}
