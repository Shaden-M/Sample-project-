//
//  TabView.swift
//  Shaden_Apps
//
//  Created by Shaden Almuhaidib on 16/08/2022.
//

import SwiftUI

struct TabbarView: View {
    
     //Line Shadow tab bar
     func setupTabBar() {
             let appearance = UITabBarAppearance()
             appearance.shadowColor = .gray
             appearance.shadowImage = UIImage(named: "tab-shadow")?.withRenderingMode(.alwaysTemplate)
             appearance.backgroundColor = UIColor.white
             UITabBar.appearance().scrollEdgeAppearance = appearance
         }

         init() {
             setupTabBar()
         }

     @State var selection = 0
  

      var body: some View {
          
          TabView(selection: $selection) {
              MenuView()
                      .tabItem {
                          Label("Menu", systemImage: "list.dash")
                      }        .tag(0)


                  ProjectsView()
                      .tabItem {
                          Label("Projects", systemImage: "puzzlepiece.fill")
                      }        .tag(1)

              ProfileView()
                  .tabItem {
                      Label("Profile", systemImage: "person.fill")
                  }        .tag(2)

              }             

      }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
