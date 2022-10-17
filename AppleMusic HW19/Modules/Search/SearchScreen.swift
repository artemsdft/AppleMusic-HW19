//
//  SearchScreen.swift
//  AppleMusic HW19
//
//  Created by Артем Дербин on 17.10.2022.
//

import SwiftUI

struct SearchScreen: View {
    @State var selectedItem: Selection = .appleMusic
    @State var searchText = ""
    @State var serchData = arrayForSearch
    @State var data: [SearchData] = SearchData.getData()
    var columns = Array(repeating: GridItem(.fixed(180)), count: 2)
    var songs: [String] {
        let songs = serchData.map { $0.lowercased() }
        return searchText == "" ? songs : songs.filter {
            $0.localizedCaseInsensitiveContains(searchText)
        }
    }
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 15) {
                    HStack{
                        Text("Поиск по категориям")
                            .font(.title2)
                            .fontWeight(.heavy)
                        Spacer(minLength: 0)
                    }
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(data, id: \.self) { item in
                            
                            NavigationLink(destination: ScreenForLink(), label: {
                                Image(item.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: (UIScreen.main.bounds.width ) / 2.2, height: 130)
                                    .cornerRadius(15)
                            })
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Поиск")
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Артисты, песни, тексты и др.") {
            VStack {
                Picker("title",selection: $selectedItem) {
                    ForEach(Selection.allCases) { category in
                        Text(category.rawValue).tag(category)
                    }
                }
                .pickerStyle(.segmented)
                List {
                    ForEach(songs, id: \.self) { item in
                        Text(item.capitalized)
                    }
                }
                .listStyle(.automatic)
            }
            .frame(width: 390, height: UIScreen.main.bounds.height )
        }
    }
}

struct SearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreen()
    }
}
