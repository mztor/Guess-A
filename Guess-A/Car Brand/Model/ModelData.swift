//
//  ModelData.swift
//  Guess-A
//
//  Created by Benjamin Abdy on 17/9/2022.
//

import Foundation

struct dataLoader {
    func loadJson(filename fileName: String) -> [carBrand]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: nil) {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(CarData.self, from: data)
                return jsonData.carBrand
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}
