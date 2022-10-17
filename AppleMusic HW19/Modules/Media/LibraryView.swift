//
//  LibraryView.swift
//  AppleMusic HW19
//
//  Created by Артем Дербин on 17.10.2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        VStack {
            Text("Ищете свою музыку?")
                .font(.title)
                .fontWeight(.bold)
            Text("Здесь появится купленная Вами в iTunes store музыка")
                .font(Font.system(size: 20))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.bottom)
        }
        .padding()
        .navigationTitle("Медиатека")    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
