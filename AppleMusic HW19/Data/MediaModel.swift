//
//  MediaModel.swift
//  AppleMusic HW19
//
//  Created by Артем Дербин on 17.10.2022.
//

import Foundation
import SwiftUI

struct Media: Identifiable, Hashable {
    let name: String
    let imageNames: String
    let id = UUID()
    
    static func getData() -> [Media] {
         let names = [
            Media(name: "Плейлисты", imageNames: "music.note.list"),
            Media(name: "Артисты", imageNames:  "music.mic"),
            Media(name: "Альбомы", imageNames: "square.stack"),
            Media(name: "Песни", imageNames: "music.note"),
            Media(name: "Телешоу и фильмы", imageNames: "tv"),
            Media(name: "Видеоклипы", imageNames: "music.note.tv"),
            Media(name: "Жанры", imageNames: "guitars"),
            Media(name: "Сборники", imageNames: "person.2.crop.square.stack"),
            Media(name: "Авторы", imageNames: "music.quarternote.3"),
            Media(name: "Загружено", imageNames: "square.and.arrow.down"),
            Media(name: "Домашняя коллекция", imageNames: "house")
        ]
        return names
    }
}
