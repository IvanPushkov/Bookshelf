

import SwiftUI

struct RegistViewContent: View{
    @State private var nameField = ""
    var btnAction: (String)-> Void
    var body: some View{
        ZStack{
            VStack{
                Text("Добро пожаловать")
                    .font(type: .bold, size: 22)
                    .foregroundColor(.white)
                Spacer()
                TextField("Введите ваше имя", text: $nameField)
                    .frame(width: .infinity)
                    .frame(height: 52)
                    .background(Color("appDark"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.vertical, 20)
                Spacer()
                Button{
                    btnAction(nameField)
                } label: {
                    Text( "Далее")
                        .padding(.vertical, 20)
                        .frame(maxWidth: .infinity)
                        .background(Color("AppOrange"))
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 20)
                        .foregroundColor(.white)
                        .font(type: .bold, size: 14)
                }
               
            }
            .background(Color("BGMain"))
        }
    }
}
// struct MyPreviewProvider_Previews: PreviewProvider {
//    static var previews: some View {
//       RegistViewContent()
//    }
//}
