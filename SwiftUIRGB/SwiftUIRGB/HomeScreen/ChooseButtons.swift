import SwiftUI

struct ChooseButtons: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    GradientRing()
                    VStack {
                        NavigationLink(destination: TrafficLightView()) {
                            Text("Traffic Light")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .frame(width: 300.0)
                                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.purple, lineWidth: 4))
                                .background(Color(red: 0, green: 0, blue: 0, opacity: 0.8)).cornerRadius(15)
                        }.navigationTitle("Home 🏠")

                        NavigationLink(destination: RGBView()) {
                            Text("RGB")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .frame(width: 300.0)
                                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.purple, lineWidth: 4))
                                .background(Color(red: 0, green: 0, blue: 0, opacity: 0.8)).cornerRadius(15)
                        }

                        NavigationLink(destination: UIColorWellView()) {
                            Text("Color Picker")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .frame(width: 300.0)
                                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.purple, lineWidth: 4))
                                .background(Color(red: 0, green: 0, blue: 0, opacity: 0.8)).cornerRadius(15)
                        }
                    }
                }

                ActionPush()
            }
        }
    }
}

struct ChooseButtons_Previews: PreviewProvider {
    static var previews: some View {
        ChooseButtons()
    }
}
