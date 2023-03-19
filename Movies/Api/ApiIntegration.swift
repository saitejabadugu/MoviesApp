//
//  ApiIntegration.swift
//  Movies
//
//  Created by Keerthi Devipriya(kdp) on 11/03/23.
//

import Foundation

class ApiIntegration {
    static func getFilms() -> FilmModel? {
        guard let filePath = Bundle.main.path(forResource: "moviesList", ofType: "json") else {return nil }
        let url = URL.init(fileURLWithPath: filePath)
        do {
            let jsonData = try Data(contentsOf: url)
            let model =  try JSONDecoder().decode(FilmModel.self, from: jsonData)
            return model
        } catch let error {
            print("error = \(error) and \(error.localizedDescription)")
        }
        return nil
    }
    
    static func getFilmDetail() -> FilmDetailModel? {
        guard let filePath = Bundle.main.path(forResource: "filmDetail", ofType: "json") else {return nil }
        let url = URL.init(fileURLWithPath: filePath)
        do {
            let jsonData = try Data(contentsOf: url)
            let model =  try JSONDecoder().decode(FilmDetailModel.self, from: jsonData)
            return model
        } catch let error {
            print("error = \(error) and \(error.localizedDescription)")
        }
        return nil
    }
    
}
