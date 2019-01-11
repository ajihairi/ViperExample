//
//  NewsModel.swift
//  ViperExample
//
//  Created by Hamzhya on 10/01/19.
//  Copyright © 2019 Hamzhya. All rights reserved.
//

import Foundation
import ObjectMapper

private let KEY_SOURCE = "author";
private let KEY_NEWS = "title";
private let KEY_DESCRIPTION = "description";
private let KEY_URL = "url";
private let KEY_URLTOIMAGE = "urltoimage";
private let KEY_PUBLISHED_AT = "publishedAt";


class NewsModel: Mappable{
    internal var news: String?;
    internal var source: String?;
    internal var description: String?;
    internal var url: String?;
    internal var urltoimage: String?;
    internal var publishedAt: String?
    
    required init?(map: Map) {
        mapping(map: map);
    }
    
    func mapping(map: Map) {
        news <- map[KEY_NEWS];
        source <- map[KEY_SOURCE];
        description <- map[KEY_DESCRIPTION];
        url <- map[KEY_URL];
        urltoimage <- map[KEY_URLTOIMAGE];
        publishedAt <- map[KEY_PUBLISHED_AT];
    }
    
}

