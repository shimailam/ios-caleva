//
//  UserDefaultsManager.swift
//  cal eva
//
//  Created by shimaila mansoor on 12/5/23.
//

import Foundation
struct UserDefaultsManager {
    static func saveSearchTerm(_ term: String) {
        let defaults = UserDefaults.standard
        var searches = defaults.object(forKey: "RecentSearches") as? [String] ?? []
        if !searches.contains(term) {
            searches.insert(term, at: 0)
        }
        if searches.count > 10 {
            searches = Array(searches.prefix(10))
        }
        defaults.set(searches, forKey: "RecentSearches")
    }

    static func loadRecentSearches() -> [String] {
        let defaults = UserDefaults.standard
        return defaults.object(forKey: "RecentSearches") as? [String] ?? []
    }
}
