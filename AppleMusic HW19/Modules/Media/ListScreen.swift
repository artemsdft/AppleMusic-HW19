//
//  ListScreen.swift
//  AppleMusic HW19
//
//  Created by Артем Дербин on 17.10.2022.
//

import SwiftUI

struct ListScreen: View {
    @State var data = Media.getData()
    @State var isEditMode: EditMode = .active
    @State var multiSelection = Set<String>()
    var body: some View {
        List(selection: $multiSelection) {
            ForEach( data, id: \.self ) { item in
                HStack {
                    Image(systemName: item.imageNames)
                        .foregroundColor(.red)
                    Text(item.name)
                        .font(Font.system(size: 22))
                }
            }
            .onMove { (indexSet, index) in
                self.data.move(fromOffsets: indexSet,
                                toOffset: index)
            }
        }
        .listStyle(.plain)
        .environment(\.editMode, $isEditMode)
        .navigationBarBackButtonHidden(true)
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
