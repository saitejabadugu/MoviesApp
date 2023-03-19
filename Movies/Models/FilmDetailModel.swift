//
//  FilmDetailModel.swift
//  Movies
//
//  Created by Keerthi Devipriya(kdp) on 17/03/23.
//

import Foundation

struct RatingModel: Codable {
    var Source: String
    var Value: String
}

struct FilmDetailModel: Codable {
    var Title: String
    var Released: String
    var Runtime: String
    var Genre: String
    var Director: String
    var Writer: String
    var Actors: String
    var Language: String
    var Country: String
    var Poster: String
    var Ratings: [RatingModel]
    var imdbRating: String
    var imdbVotes: String
    var imdbID: String
    var BoxOffice: String
    var Production: String
    var Website: String
}


/*
 
 {
   "Title": "Bollywood Queen",
   "Year": "2002",
   "Rated": "N/A",
   "Released": "17 Oct 2003",
   "Runtime": "89 min",
   "Genre": "Musical, Romance",
   "Director": "Jeremy Wooding",
   "Writer": "William Shakespeare, Neil Spencer, Jeremy Wooding",
   "Actors": "Preeya Kalidas, James McAvoy, Ray Panthaki",
   "Plot": "A cross cultural romance set in London's East End about a young girl of Indian heritage.",
   "Language": "English, Hindi",
   "Country": "United Kingdom",
   "Awards": "1 nomination",
   "Poster": "https://m.media-amazon.com/images/M/MV5BODE2ZTAyM2QtODZiYi00ZWVkLTllMGUtNmFkNDNlMDIxYmZlXkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_SX300.jpg",
   "Ratings": [
     {
       "Source": "Internet Movie Database",
       "Value": "4.7/10"
     },
     {
       "Source": "Rotten Tomatoes",
       "Value": "71%"
     }
   ],
   "Metascore": "N/A",
   "imdbRating": "4.7",
   "imdbVotes": "482",
   "imdbID": "tt0321494",
   "Type": "movie",
   "DVD": "N/A",
   "BoxOffice": "N/A",
   "Production": "N/A",
   "Website": "N/A",
   "Response": "True"
 }


 */
