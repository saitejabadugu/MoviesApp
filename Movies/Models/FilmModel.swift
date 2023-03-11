//
//  FilmModel.swift
//  Movies
//
//  Created by Keerthi Devipriya(kdp) on 11/03/23.
//

import Foundation

struct FilmModel: Codable {
    var Search: [Film]?
    struct Film: Codable {
        var Title: String?
        var Year: String?
        var imdbID: String?
        //var Type: String?
        var Poster: String?
    }
}
