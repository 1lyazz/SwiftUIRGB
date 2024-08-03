// тут создаются 3 состояния(круга) светофора

import SwiftUI

struct TrafficConditions: View {
    var redCondition: some View {
        setCondition()
    }

    var yellowCondition: some View {
        setCondition()
    }

    var greenCondition: some View {
        setCondition()
    }

    var body: some View {
        redCondition
        yellowCondition
        greenCondition
    }

    private func setCondition() -> some View { // метод создания круга
        return Circle()
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(.gray, lineWidth: 3))
    }
}

struct TrafficConditions_Previews: PreviewProvider {
    static var previews: some View {
        TrafficConditions()
    }
}
