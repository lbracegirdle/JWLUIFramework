import SwiftUI

public struct JWLUIFramework {
    public struct MainTextField: View {
        @State var placeholder: String
        @Binding var text: String
        
        /// This is a text field
        /// - Parameters:
        ///   - placeholder: the text you see before you type anything
        ///   - text: the text that gets typed into the field
        public init(placeholder: String, text: Binding<String>) {
            self._placeholder = State(initialValue: placeholder)
            self._text = text
        }
    
        public var body: some View {
            HStack {
                Image(systemName: "person").foregroundColor(Color.blue)
                TextField(placeholder, text: $text)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(Color.blue)
            }.padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
            
        }
    }
}
