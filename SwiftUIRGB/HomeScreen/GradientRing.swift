import SwiftUI

struct GradientRing: View {
    
    var body: some View {
        let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red])
        let gradient = AngularGradient (gradient: colors, center: .center)
        return Circle()
            .strokeBorder(gradient, lineWidth: 60)
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientRing()
    }
}
