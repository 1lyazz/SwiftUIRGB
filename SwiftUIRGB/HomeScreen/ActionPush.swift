// В данном файле находится реализация анимированной кнопки с тектом, побуждающим юзера выбрать вариант

import SwiftUI

struct ActionPush: View {
    @State var showText = false

    var body: some View {
        VStack {
            if self.showText { // появляющийся текст при нажатии кнопки PUSH ME
                Text("MAKE A CHOICE")
                    .font(.largeTitle)
                    .fontWeight(.black)
            }

            Button(action: { // кнопка PUSH ME / AGAIN
                withAnimation {
                    self.showText.toggle()
                }
            }, label: {
                if !showText { Text("PUSH ME") }
                else { Text("AGAIN!!!") }
            })
            .frame(width: 190, height: 60)
            .font(.system(size: 30, weight: .bold, design: .default))
            .foregroundColor(.white)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.purple, lineWidth: 4))
            .background(Color.black).cornerRadius(15)
            .padding()
        }
    }
}

struct ActionPush_Previews: PreviewProvider {
    static var previews: some View {
        ActionPush()
    }
}
