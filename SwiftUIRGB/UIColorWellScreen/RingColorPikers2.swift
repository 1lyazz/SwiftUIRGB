import SwiftUI

struct RingColorPikers2: View {
    @State private var selection1: CGColor = .init(red: 1, green: 1, blue: 1, alpha: 1)
    @State private var selection2: CGColor = .init(red: 1, green: 1, blue: 1, alpha: 1)
    @State private var selection3: CGColor = .init(red: 1, green: 1, blue: 1, alpha: 1)
    @State private var selection4: CGColor = .init(red: 1, green: 1, blue: 1, alpha: 1)
    @State private var selection5: CGColor = .init(red: 1, green: 1, blue: 1, alpha: 1)
    @State private var selection6: CGColor = .init(red: 1, green: 1, blue: 1, alpha: 1)

    var body: some View {
        ScrollView {
            ColorPicker(selection: $selection1, label: {
                Text("First color")
                    .font(.title)
                    .fontWeight(.medium)
            }).padding().colorMultiply(.red)
            ColorPicker(selection: $selection2, label: {
                Text("Second color")
                    .font(.title)
                    .fontWeight(.medium)
            }).padding().colorMultiply(.yellow)
            ColorPicker(selection: $selection3, label: {
                Text("Third color")
                    .font(.title)
                    .fontWeight(.medium)
            }).padding().colorMultiply(.green)
            ColorPicker(selection: $selection4, label: {
                Text("Fourth color")
                    .font(.title)
                    .fontWeight(.medium)
            }).padding().colorMultiply(.blue)
            ColorPicker(selection: $selection5, label: {
                Text("Fifth color")
                    .font(.title)
                    .fontWeight(.medium)
            }).padding().colorMultiply(.purple)
            ColorPicker(selection: $selection6, label: {
                Text("Sixth color")
                    .font(.title)
                    .fontWeight(.medium)
            }).padding().colorMultiply(.red)
        }
        .padding(.trailing, 10.0)
        .padding(.vertical, 10.0)
    }
}

struct RingColorPikers2_Previews: PreviewProvider {
    static var previews: some View {
        RingColorPikers2()
    }
}
