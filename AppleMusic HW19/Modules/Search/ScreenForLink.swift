//
//  ScreenForLink.swift
//  AppleMusic HW19
//
//  Created by Артем Дербин on 17.10.2022.
//

import SwiftUI

struct ScreenForLink: View {
    let row = [GridItem(.fixed(300))]
    let secondRow = [GridItem(.fixed(155))]
    
    @State var firstData: [FirstSection] = FirstSection.getData()
    @State var secondData: [FirstSection] = FirstSection.getSecondData()
    @State var thirdData: [FirstSection] = FirstSection.getThirdData()
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HStack {
                    Text("80-e")
                        .font(Font.system(size: 30))
                        .fontWeight(.bold)
                    Spacer()
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: row) {
                        ForEach(firstData, id: \.self) { item in
                            VStack(alignment: .leading) {
                                Text(item.text ?? "")
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
                            }
                        }
                    }
                }
                VStack(spacing: 7) {
                    HStack {
                        Text("Звучание 80-x")
                            .font(Font.system(size: 25))
                            .fontWeight(.bold)
                        Spacer()
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: secondRow) {
                            ForEach(secondData, id: \.self) { item in
                                VStack(alignment: .leading){
                                    Image(item.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .cornerRadius(10)
                                        .frame(width: 155)
                                    Text(item.secondText)
                                        .font(Font.system(size: 17))
                                        .fontWeight(.bold)
                                    Text(item.thirdText)
                                        .font(Font.system(size: 17))
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                    }
                }
                VStack(spacing: 7){
                    HStack {
                        Text("Плейлисты по артистам")
                            .font(Font.system(size: 25))
                            .fontWeight(.bold)
                        Spacer()
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: secondRow) {
                            ForEach(thirdData, id: \.self) { item in
                                VStack(alignment: .leading){
                                    Image(item.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .cornerRadius(10)
                                        .frame(width: 155)
                                    Text(item.secondText)
                                        .font(Font.system(size: 17))
                                        .fontWeight(.bold)
                                    Text(item.thirdText)
                                        .font(Font.system(size: 15))
                                }
                            }
                        }
                    }
                }
            }
            .offset(y: -70)
            .padding()
        }
    }
}

struct ScreenForLink_Previews: PreviewProvider {
    static var previews: some View {
        ScreenForLink()
    }
}
