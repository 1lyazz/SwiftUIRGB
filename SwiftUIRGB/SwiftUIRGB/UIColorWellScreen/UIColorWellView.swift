import SwiftUI

struct UIColorWellView: View {
    @State private var selection0: CGColor = .init(red: 1, green: 1, blue: 1, alpha: 1)

    var body: some View {
        ZStack {
            Color(selection0).ignoresSafeArea()
            VStack {
                ColorPicker(selection: $selection0, label: {
                    Text("1. Choose a background color ------------------>")
                        .font(.title)
                        .fontWeight(.bold)
                }).padding()
                RingColorPikers()
            }
        }
    }
}

struct UIColorWellView_Previews: PreviewProvider {
    static var previews: some View {
        UIColorWellView()
    }
}
