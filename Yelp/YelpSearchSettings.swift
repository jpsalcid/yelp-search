//
//  YelpSearchSettings.swift
//  Yelp
//
//  Created by Jasen Salcido on 9/3/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import Foundation

struct YelpSearchSettings {
    var searchString = "Restaurants"
    var categories = []
    let languages = ["Java", "JavaScript", "Objective-C", "Python", "Ruby", "Swift"]
    var deals = true
    var distances = [["mi": "0.3 miles", "m": 482], ["mi": "1 mile", "m": 1609], ["mi": "5 miles", "m": 8046], ["mi": "20 miles", "m": 32186]]
    var selectedDistance: Int?
    var shouldFilterDistances = false
    var shouldFilterSortBy = false
    var sortByCategories = [["text": "Best Matched", "value": 0], ["text": "Distance", "value": 1], ["text": "Highest Rated", "value": 2]]
    var selectedSortBy = 0
}