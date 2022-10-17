//
//  RadioModel.swift
//  AppleMusic HW19
//
//  Created by Артем Дербин on 17.10.2022.
//

import Foundation

struct RadioSection: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let text: String
    let secondText: String
    let thirdText: String
    
    static func getData() -> [RadioSection] {
        let data = [
            RadioSection(imageName: "radio4", text: "избранная радиостанция", secondText: "Легкий поп", thirdText: "Станция Apple Music"),
            RadioSection(imageName: "radio3", text: "избранная радиостанция", secondText: "Хиты", thirdText: "Станция Apple Music"),
            RadioSection(imageName: "radio2", text: "избранная радиостанция", secondText: "Хип-хоп", thirdText: "Станция Apple Music"),
            RadioSection(imageName: "radio1", text: "избранная радиостанция", secondText: "Классика рока", thirdText: "Станция Apple Music"),
            RadioSection(imageName: "radio0", text: "избранная радиостанция", secondText: "Джаз", thirdText: "Станция Apple Music")
        ]
        return data
    }
}

struct SecondRadioSection: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let text: String
    let secondaryText: String
    
    static func getData() -> [SecondRadioSection] {
        let data = [
        SecondRadioSection(imageName: "radio5", text: "Хиты на все времена", secondaryText: "Станция Apple Music"),
        SecondRadioSection(imageName: "radio6", text: "Золотая эра хиап-хопа", secondaryText: "Станция Apple Music"),
        SecondRadioSection(imageName: "radio7", text: "Хиты 2000-х", secondaryText: "Станция Apple Music"),
        SecondRadioSection(imageName: "radio8", text: "Классика рока", secondaryText: "Станция Apple Music"),
        SecondRadioSection(imageName: "radio9", text: "Альтернатива", secondaryText: "Станция Apple Music")
        ]
        return data
    }
    
}
