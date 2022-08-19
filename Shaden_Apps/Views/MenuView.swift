//
//  SwiftUIView.swift
//  Shaden_Apps
//
//  Created by Shaden Almuhaidib on 15/08/2022.
//

import SwiftUI

struct MenuView: View {
//        @State private var showDetails = false
//    @State private var isAnimated = false
//    @State var navigationFlag = false
    var body: some View {
        NavigationView{
                ZStack{
                   
                    Image("Background2")
                    .resizable()
                    .frame(width: 450, height: 400)
                    .offset(x: 0, y: -300)
                    
          
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 430, height: 850, alignment: .center)
                        .cornerRadius(100)
                        .offset(x: 0, y: 160)
                        .shadow(color: .gray, radius: 10, x: 1, y: 1)
                    
                    Image("ShadenLogo")
                        .resizable()
                        .frame(width: 200, height: 200, alignment: .center)
                        .offset(x: 0, y: -260)

                    Spacer()
                    VStack(alignment: .center, spacing: 9){

                   NavigationLink(destination: AboutMeView(), label: {
                        Text("About me")
                            .bold()
                            .font(Font.title)
                            .padding()
                            .frame(width: 350, height: 100, alignment: .center)
                            .background(.white)
                            .cornerRadius(30)
                            .shadow(color: .black, radius: 10, x: 0, y: 0)
                    }).accentColor(.black)

                    
                    Divider()
                    
   
                   NavigationLink(destination: AboutMeView(), label: {
                    Text("Tools")
                         .bold()
                         .font(Font.title)
                         .padding()
                         .foregroundColor(Color.black)
                         .frame(width: 350, height: 100, alignment: .center)
                         .background(Color.white)
                         .cornerRadius(30)
                         .shadow(color: .black, radius: 10, x: 0, y: 0)
                    })
                    
//                        .onTapGesture {
//                            withAnimation(.spring()){
//                                isAnimated.toggle()
//                            }
//                        }
                        Divider()


                        NavigationLink(destination: AboutMeView(), label: {
                    Text("Contact")
                         .font(.system(size: 27))
                         .bold()
                         .padding()
                         .foregroundColor(Color.black)
                         .frame(width: 350, height: 100, alignment: .center)
                         .background(Color.white)
                         .cornerRadius(30)
                         .shadow(color: .black, radius: 10, x: 0, y: 0)
                    })

                        }.offset(x: 0, y: 100)
                        .navigationTitle("Main Menu")
                        
                }.navigationBarHidden(true)

                    
    }
                }
}
    

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
