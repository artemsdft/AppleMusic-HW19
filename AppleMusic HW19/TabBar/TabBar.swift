//
//  TabBar.swift
//  AppleMusic HW19
//
//  Created by Артем Дербин on 17.10.2022.
//

import SwiftUI

struct TabBar: View {
    @State var current = 4

    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $current)  {
                Text("Слушать")
                    .tag(0)
                    .tabItem {
                        Image(systemName: "play.circle.fill")
                        Text("Слушать")
                    }
                Text("Обзор")
                    .tag(1)
                    .tabItem {
                        Image(systemName: "square.grid.2x2.fill")
                        Text("Обзор")
                    }
                RadioScreen()
                    .tag(2)
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                NavigationScreen()
                    .tag(3)
                    .tabItem {
                        Image(systemName: "rectangle.stack.fill")
                        Text("Медиатека")
                    }
                SearchScreen()
                    .tag(4)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            MiniPlayer()
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
