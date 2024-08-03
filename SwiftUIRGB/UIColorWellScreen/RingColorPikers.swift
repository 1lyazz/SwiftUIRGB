import SwiftUI

class ColorRing: ObservableObject {
    @Published var selection1 = Color.red
    @Published var selection2 = Color.yellow
    @Published var selection3 = Color.green
    @Published var selection4 = Color.blue
    @Published var selection5 = Color.purple
    @Published var selection6 = Color.red
}

struct RingColorPikers: View {
    @ObservedObject var user = ColorRing()

    var body: some View {
        VStack {
            setCircle()
            Text("2. Choose colours for the circle")
                .font(.title)
                .fontWeight(.bold)
            ScrollView {
                ColorPicker(selection: $user.selection1, label: {
                    Text("First color")
                        .font(.title)
                        .fontWeight(.medium)
                }).padding()
                ColorPicker(selection: $user.selection2, label: {
                    Text("Second color")
                        .font(.title)
                        .fontWeight(.medium)
                }).padding()
                ColorPicker(selection: $user.selection3, label: {
                    Text("Third color")
                        .font(.title)
                        .fontWeight(.medium)
                }).padding()
                ColorPicker(selection: $user.selection4, label: {
                    Text("Fourth color")
                        .font(.title)
                        .fontWeight(.medium)
                }).padding()
                ColorPicker(selection: $user.selection5, label: {
                    Text("Fifth color")
                        .font(.title)
                        .fontWeight(.medium)
                }).padding()
                ColorPicker(selection: $user.selection6, label: {
                    Text("Sixth color")
                        .font(.title)
                        .fontWeight(.medium)
                }).padding()
            }
        }
    }

    private func setCircle() -> some View {
        let colors = Gradient(colors: [user.selection1, user.selection2, user.selection3, user.selection4, user.selection5, user.selection6])
        let gradient = AngularGradient(gradient: colors, center: .center)
        return Circle()
            .strokeBorder(gradient, lineWidth: 60)
    }
}

struct RingColorPikers_Previews: PreviewProvider {
    static var previews: some View {
        RingColorPikers()
    }
}
