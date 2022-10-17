//
//  SearchModel.swift
//  AppleMusic HW19
//
//  Created by Артем Дербин on 17.10.2022.
//

import Foundation

struct SearchData: Hashable {
    var imageName: String
    
    static func getData() -> [SearchData] {
        let data = [
            SearchData(imageName: "p1"),
            SearchData(imageName: "p2"),
            SearchData(imageName: "p3"),
            SearchData(imageName: "p4"),
            SearchData(imageName: "p5"),
            SearchData(imageName: "p6"),
            SearchData(imageName: "p7"),
            SearchData(imageName: "p8"),
            SearchData(imageName: "p9"),
            SearchData(imageName: "p10")
        ]
        return data
    }
}

struct FirstSection: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let text: String?
    let secondText: String
    let thirdText: String
    
    static func getData() -> [FirstSection] {
        let data = [
            FirstSection(imageName: "p11", text: "избранная радиостанция", secondText: "Легкий поп", thirdText: "Станция Apple Music"),
            FirstSection(imageName: "p12", text: "избранная радиостанция", secondText: "Хиты", thirdText: "Станция Apple Music"),
            FirstSection(imageName: "p13", text: "избранная радиостанция", secondText: "Хип-хоп", thirdText: "Станция Apple Music"),
            FirstSection(imageName: "p14", text: "избранная радиостанция", secondText: "Классика рока", thirdText: "Станция Apple Music"),
            FirstSection(imageName: "p15", text: "избранная радиостанция", secondText: "Джаз", thirdText: "Станция Apple Music")
        ]
        return data
    }
    
    static func getSecondData() ->[FirstSection] {
        let data = [
            FirstSection(imageName: "p16", text: nil, secondText: "Легкий поп", thirdText: "Apple Music Dance"),
            FirstSection(imageName: "p17", text: nil, secondText: "Хиты", thirdText: "Apple Music Поп"),
            FirstSection(imageName: "p18", text: nil, secondText: "Хип-хоп", thirdText: "Apple Music R&B"),
            FirstSection(imageName: "p19", text: nil, secondText: "Классика рока", thirdText: "Apple Music Инди"),
            FirstSection(imageName: "p20", text: nil, secondText: "Джаз", thirdText: "Apple Music Альтернатива")
        ]
        return data
    }
    
    static func getThirdData() ->[FirstSection] {
        let data = [
            FirstSection(imageName: "p21", text: nil, secondText: "Bon  Jovi", thirdText: "Apple Music Рок"),
            FirstSection(imageName: "p22", text: nil, secondText: "Джанет Джексон", thirdText: "Apple Music R&B"),
            FirstSection(imageName: "p23", text: nil, secondText: "Кейт Буш", thirdText: "Apple Music Альтер.."),
            FirstSection(imageName: "p24", text: nil, secondText: "Daryl Hall & John", thirdText: "Apple Music Поп"),
            FirstSection(imageName: "p25", text: nil, secondText: "Motley Crue", thirdText: "Apple Music Хард-рок")
        ]
        return data
    }
}

var arrayForSearch = [
    "Bon  Jovi",
    "Джанет Джексон",
    "Кейт Буш",
    "Motley Crue",
    "Легкий поп",
    "Хиты",
    "Классика рока",
    "Джаз"
]

enum Selection: String, CaseIterable, Identifiable {
    case appleMusic = "Apple Music"
    case  mediaLibrary = "Ваша Медиатека"
    
    var id: Self {
        self
    }
}
