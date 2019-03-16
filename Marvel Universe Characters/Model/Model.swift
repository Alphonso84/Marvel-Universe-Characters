//
//  Model.swift
//  Marvel Universe Characters
//
//  Created by user on 1/3/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

//MODELS FOR ALL DATA

struct Hero: Equatable {
    
    var name = String()
    var bio = String()
    var pic = UIImage()
    func addToArray(array: inout [Hero]){
         (array.append(self))
    }
    
}

struct Marvel {
    let code: Int
    let status, copyright, attributionText, attributionHTML: String
    let etag: String
    let data: DataClass
}

struct DataClass {
    let offset, limit, total, count: Int
    let results: [Result]
}

struct Result {
    let id: Int
    let name, description: String
    let modified: Date
    let thumbnail: Thumbnail
    let resourceURI: String
    let comics, series: Comics
    let stories: Stories
    let events: Comics
    let urls: [URLElement]
}

struct Comics {
    let available: Int
    let collectionURI: String
    let items: [ComicsItem]
    let returned: Int
}

struct ComicsItem {
    let resourceURI: String
    let name: String
}

struct Stories {
    let available: Int
    let collectionURI: String
    let items: [StoriesItem]
    let returned: Int
}

struct StoriesItem {
    let resourceURI: String
    let name: String
    let type: ItemType
}

enum ItemType {
    case cover
    case empty
    case interiorStory
    case pinup
}

struct Thumbnail {
    let path: String
    let thumbnailExtension: Extension
}

enum Extension {
    case gif
    case jpg
}

struct URLElement {
    let type: URLType
    let url: String
}

enum URLType {
    case comiclink
    case detail
    case wiki
}
