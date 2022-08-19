//
//  ProjectsView.swift
//  Shaden_Apps
//
//  Created by Shaden Almuhaidib on 15/08/2022.
//

import SwiftUI

struct ProjectsView: View {
    
    //    init() {
//        UINavigationBar.appearance().foregroundColor = .white
//    }
    var body: some View {

        NavigationView{
            
            ZStack(alignment: .bottom){
                ZStack{
                Image("BG3")
                .resizable()
                .scaledToFit()
                .frame(width: 800, height: 890)
                .offset(x: 0, y: -300)
                
      
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 430, height: 850, alignment: .center)
                    .cornerRadius(100)
                    .offset(x: 0, y: 250)
                    .shadow(color: .gray, radius: 10, x: 1, y: 1)
          
            }
//                Spacer()
            
                ScrollView(.horizontal){

                    HStack(spacing:60){
                    ForEach(productList, id: \.id) { product in ProductCard (product :product)
                    }
                    }.padding(90)
                }
                .padding(.horizontal, 130.0)
            }
            .navigationTitle("Projects")
            .ignoresSafeArea()

        }
            }

}


struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}
