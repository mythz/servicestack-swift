import Testing
import ServiceStack

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
}

@Test func email() async throws {
    let email = try Email("john.appleseed@apple.com")
    #expect(email.description == "john.appleseed@apple.com")
}
