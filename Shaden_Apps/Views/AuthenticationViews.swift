//
//  AuthenticationViews.swift
//  Shaden_Apps
//
//  Created by Shaden Almuhaidib on 15/08/2022.
////
//import AuthenticationServices
import SwiftUI

struct AuthenticationViews: View {
    
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack(alignment: .center, spacing: 50){
        VStack(alignment: .leading, spacing: 15){
        Text("For a personalized experience, sign into your account")
                    .font(Font.largeTitle)
                
                
                TextField("Email", text: $email)
                    .foregroundColor(.black)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty){
                        Text("Email")
                            .foregroundColor(.black)
                            .bold()
                    }
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.black)
            
            

                SecureField("Password", text: $password)
                    .foregroundColor(.black)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty){
                        Text("Password")
                            .foregroundColor(.black)
                            .bold()
                    }
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.black)
        }
            
            Button {
//                sign up
            } label: {
                Text("Sign up")
                    .bold()
                    .frame(width: 200, height: 40)
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .foregroundColor(Color.black))
            }.foregroundColor(.white)

}
            .frame(width: 350)
    }
}
struct AuthenticationViews_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationViews()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
