import XCTest
import SwiftUI
@testable import JWLUIFramework

final class JWLUIFrameworkTests: XCTestCase {
    @State var text: String
    
    public init(text: String) {
        self.text = text
        super.init()
    }
    
    func testExample() throws {
        var body: some View { JWLUIFramework.MainTextField(placeholder: "Testing", text: $text)
    }
    }
}
