
import SwiftUI

public struct AlertView: View {
    @Binding var isPresented: Bool
    let title: String
    let message: String

    public init(isPresented: Binding<Bool>, title: String, message: String) {
        _isPresented = isPresented
        self.title = title
        self.message = message
    }

    public var body: some View {
        ZStack {
            if isPresented {
                Color.black.opacity(0.4).edgesIgnoringSafeArea(.all)

                VStack {
                    Text(title)
                        .font(.title)
                        .padding()

                    Text(message)
                        .padding()

                    Button("OK") {
                        isPresented = false
                    }
                    .padding()

                    Spacer()
                }
                .background(Color.white)
                .cornerRadius(10)
                .padding()
            }
        }
    }
}

