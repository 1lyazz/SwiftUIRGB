import SwiftUI

struct RGBView: View {

    @State private var shape2Color = Color.blue
    @State private var valueR: Double = 160
    @State private var valueG: Double = 0
    @State private var valueB: Double = 160
    
    @State var fixColor = false
    
    var body: some View {
        VStack {
            VStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 350, height: 160)
                    .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.purple, lineWidth: 4))
                    .foregroundColor(shape2Color)
                    .padding(.horizontal)
                
                HStack{
                    
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 160, height: 160)
                        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.purple, lineWidth: 4))
                        .foregroundColor(Color(red: valueR, green: valueG, blue: valueB))
                        .padding(.horizontal)
                    
                    if !self.fixColor {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 160, height: 160)
                            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.purple, lineWidth: 4))
                            .foregroundColor(Color(.white))
                            .padding(.horizontal)
                    } else {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 160, height: 160)
                            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.purple, lineWidth: 4))
                            .foregroundColor(Color(red: valueR, green: valueG, blue: valueB))
                            .padding(.horizontal)
                    }
                }
            }

            Form {
                Section(header: Text("Color Settings")) {
                    ColorPicker("Shape color", selection: $shape2Color)
                    
                    HStack {
                        Text("R")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                        Slider(value: $valueR, in: 0...255)
                            .accentColor(.red)
                            .colorMultiply(.red)
                        Text("\(lround(valueR))")
                    }
                    
                    HStack {
                        Text("G")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                        Slider(value: $valueG, in: 0...255)
                            .accentColor(.green)
                            .colorMultiply(.green)
                        Text("\(lround(valueG))")
                    }
                    
                    HStack {
                        Text("B")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                        Slider(value: $valueB, in: 0...255)
                            .accentColor(.blue)
                            .colorMultiply(.blue)
                        Text("\(lround(valueB))")
                    }
                    
                    Button("Assign") {
                        self.fixColor.toggle()
                    }
                    .frame(width: 120, height: 30)
                    .font(.system(size: 17, weight: .bold, design: .default))
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.blue, lineWidth: 4))
                    .background(Color.white).cornerRadius(15)
                }
            }
            .frame(height: 280)
            .padding(.horizontal)
            .padding(.top, 50)
        }
    }
}

struct RGBView_Previews: PreviewProvider {
    static var previews: some View {
        RGBView()
    }
}
