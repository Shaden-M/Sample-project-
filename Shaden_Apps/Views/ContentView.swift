//
//  ContentView.swift
//  Shaden_Apps
//
//  Created by Shaden Almuhaidib on 15/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isActive:Bool = false
    @State private var isSelected = false
    @State private var isAnimated = false
    var body: some View {
        VStack{
            if self.isActive {
                TabbarView()
            } else {
                
                ZStack{
                    LinearGradient( colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing )

                    
                VStack{
                    Image("ShadenLogo")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
        Text("SHADEN ALMUHAIDIB")
                        .foregroundColor(.white)
                        .font(Font.title)
                        .bold()
    }
            }
                .edgesIgnoringSafeArea(.all)
                
            }
        }
        .onAppear(){
            withAnimation(.spring()){
                isAnimated.toggle()
            }
        }

        .onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation(){
                    self.isActive = true
                }
            }
        }
}
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        SplashView()
    }
}
