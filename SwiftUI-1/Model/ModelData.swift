//
//  ModelData.swift
//  SwiftUI-1
//
//  Created by Moazam Mir on 1/21/21.
//

import Foundation
import Combine

final class ModelData : ObservableObject{
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}


func load<T : Decodable>(_ filename : String) -> T {
    
    let data: Data

    print("Loaded data")
     guard let file = Bundle.main.url(forResource: filename, withExtension: nil)

     else {

         fatalError("Couldn't find \(filename) in main bundle.")
     }

     do {
         data = try Data(contentsOf: file)

     } catch {

         fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
     }
     do {
         let decoder = JSONDecoder()
         return try decoder.decode(T.self, from: data)

     } catch {
         fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
     }

 }
