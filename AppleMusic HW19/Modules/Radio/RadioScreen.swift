//
//  RadioScreen.swift
//  AppleMusic HW19
//
//  Created by Артем Дербин on 17.10.2022.
//

import SwiftUI

struct RadioScreen: View {
    let row = [GridItem(.fixed(300))]
    let column = [GridItem(.adaptive(minimum: 350))]
    @State var firstData: [RadioSection] = RadioSection.getData()
    @State var secondData: [SecondRadioSection] = SecondRadioSection.getData()
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: row) {
                            ForEach(firstData, id: \.self) { item in
                                VStack(alignment: .leading) {
                                    Divider()
                                    Text(item.text)
                                        .foregroundColor(.secondary)
                                        .font(Font.system(size: 20))
                                    Text(item.secondText)
                                        .font(Font.system(size: 25))
                                    Text(item.thirdText)
                                        .font(Font.system(size: 25))
                                        .foregroundColor(.secondary)
                                    Image(item.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .cornerRadius(15)
                                        .frame(width: 340)
                                    Divider()
                                }
                            }
                        }
                    }
                    LazyVGrid(columns: column, alignment: .leading) {
                        Text("Станции")
                            .font(Font.system(size: 25))
                        ForEach(secondData, id: \.self) { item in
                            HStack {
                                Image(item.imageName)
                                    .resizable()
                                    .cornerRadius(15)
                                    .frame(width: 100, height: 100)
                                VStack(alignment: .leading) {
                                    Text(item.text)
                                        .font(Font.system(size: 20))
                                    Text(item.secondaryText)
                                        .foregroundColor(.secondary)
                                }
                            }
                            Divider()
                        }
                    }
                }
                .padding()
                .navigationTitle("Радио")
            }
        }
    }
}

struct RadioScreen_Previews: PreviewProvider {
    static var previews: some View {
        RadioScreen()
    }
}
