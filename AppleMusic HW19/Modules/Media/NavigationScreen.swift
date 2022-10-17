//
//  NavigationScreen.swift
//  AppleMusic HW19
//
//  Created by Артем Дербин on 17.10.2022.
//

import SwiftUI

struct NavigationScreen: View {
    @State var isEditMode: EditMode = .active
    @State var selectionScreen = true
    var body: some View {
        NavigationView {
            VStack {
                if selectionScreen {
                    LibraryView()
                } else {
                    ListScreen()
                }
            }
            .navigationTitle("Медиатека")
            .environment(\.editMode, $isEditMode)
            .toolbar(content: {
                Button(action: {
                    selectionScreen.toggle()
                }, label: {
                    if selectionScreen {
                        Text("править")
                    } else {
                        Text("готово")
                    }
                })
            })
        }
        .navigationBarBackButtonHidden(false)
    }
}
struct NavigationScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationScreen()
    }
}
