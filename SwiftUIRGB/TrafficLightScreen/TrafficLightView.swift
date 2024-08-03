import SwiftUI

struct TrafficLightView: View {
    // обертки вьюшек для затемненного состояния кругов световора
    @State private var darkRed = 0.001
    @State private var darkYellow = 0.001
    @State private var darkGreen = 0.001
    
    var body: some View {
        ZStack {
            Color(.darkGray).ignoresSafeArea()
            VStack {
                ZStack {
                    Color(.black)
                        .frame(width: 200, height: 600)
                        .clipShape(RoundedRectangle(cornerRadius: 70))
                        .overlay(RoundedRectangle(cornerRadius: 70).stroke(Color.white, lineWidth: 4))
                        .padding(1)
                    VStack {
                        TrafficConditions() // добавление красного круга
                            .redCondition
                            .foregroundColor(Color(red: 255, green: 0, blue: 0, opacity: darkRed))
                        TrafficConditions() // добавление желтого круга
                            .yellowCondition
                            .foregroundColor(Color(red: 255, green: 255, blue: 0, opacity: darkYellow))
                        TrafficConditions() // добавление зеленого круга
                            .greenCondition
                            .foregroundColor(Color(red: 0, green: 255, blue: 0, opacity: darkGreen))
                    }
                }
                
                Button(action: {
                    changeOpacity()
                }, label: {
                    if darkRed == 1.0 || darkYellow == 1.0 || darkGreen == 1.0 {
                        Text("NEXT")
                    } else {
                        Text("Start")
                    }
                })
                .frame(width: 190, height: 60)
                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(.white)
                .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.white, lineWidth: 4))
                .background(Color.black).cornerRadius(15)
                .padding()
            }
        }
    }
    
    private func changeOpacity() {
        if darkRed < 1.0,
           darkYellow < 1.0,
           darkGreen < 1.0 { darkRed = 1.0 }
        else if darkRed == 1.0,
                darkYellow == 0.001 { darkYellow = 1.0 }
        else if darkRed == 1.0, darkYellow == 1.0 {
            darkRed = 0.001
            darkYellow = 0.001
            darkGreen = 1.0
        } else if darkGreen == 1.0 {
            darkGreen = 0.001
            darkYellow = 1.0
        } else if darkYellow == 1.0 {
            darkRed = 1.0
            darkYellow = 0.001
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}
