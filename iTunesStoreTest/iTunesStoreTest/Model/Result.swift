//
//  Result.swift
//  iTunesStoreTest
//
//  Created by Aleksey Usanov on 16.02.2020.
//  Copyright © 2020 Aleksey Usanov. All rights reserved.
//

import Foundation
import ObjectMapper
import AlamofireObjectMapper

struct SearchResult: Mappable {
    var resultCount: Int?
    var results: [ResultItem]?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        resultCount <- map["resultCount"]
        results <- map["results"]
    }
}

struct ResultItem: Mappable {
    var wrapperType: String?
    var kind: String?
    var artistId: Int?
    var collectionId: Int?
    var trackId: Int?
    var artistName: String?
    var collectionName: String?
    var trackName: String?
    var collectionCensoredName: String?
    var trackCensoredName: String?
    var artistViewUrl: String?
    var collectionViewUrl: String?
    var trackViewUrl: String?
    var previewUrl: String?
    var artworkUrl30: String?
    var artworkUrl60: String?
    var artworkUrl100: String?
    var collectionPrice: Double?
    var trackPrice: Double?
    var releaseDate: String?
    var collectionExplicitness: String?
    var trackExplicitness: String?
    var discCount: Int?
    var discNumber: Int?
    var trackCount: Int?
    var trackNumber: Int?
    var trackTimeMillis: Int?
    var country: String?
    var currency: String?
    var primaryGenreName: String?
    var isStreamable: Bool?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        wrapperType <- map["wrapperType"]
        kind <- map["kind"]
        artistId <- map["artistId"]
        collectionId <- map["collectionId"]
        trackId <- map["trackId"]
        artistName <- map["artistName"]
        collectionName <- map["collectionName"]
        trackName <- map["trackName"]
        collectionCensoredName <- map["collectionCensoredName"]
        trackCensoredName <- map["trackCensoredName"]
        artistViewUrl <- map["artistViewUrl"]
        collectionViewUrl <- map["collectionViewUrl"]
        trackViewUrl <- map["trackViewUrl"]
        previewUrl <- map["previewUrl"]
        artworkUrl30 <- map["artworkUrl30"]
        artworkUrl60 <- map["artworkUrl60"]
        artworkUrl100 <- map["artworkUrl100"]
        collectionPrice <- map["collectionPrice"]
        trackPrice <- map["trackPrice"]
        releaseDate <- map["releaseDate"]
        collectionExplicitness <- map["collectionExplicitness"]
        trackExplicitness <- map["trackExplicitness"]
        discCount <- map["discCount"]
        discNumber <- map["discNumber"]
        trackCount <- map["trackCount"]
        trackNumber <- map["trackNumber"]
        wrapperType <- map["wrapperType"]
        trackTimeMillis <- map["trackTimeMillis"]
        country <- map["country"]
        currency <- map["currency"]
        primaryGenreName <- map["primaryGenreName"]
        isStreamable <- map["isStreamable"]
    }
}
