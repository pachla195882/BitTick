//
//  Decoder.swift
//  BitTick
//
//  Created by Radek Pachla on 06/01/2021.
//  Copyright © 2021 Radek Pachla. All rights reserved.
//

import Foundation

class Decoder : Codable {
    
    
    func getData() {
        let url = "https://bitbay.net/API/Public/LSKPLN/ticker.json"
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
        
        guard let data = data, error == nil else{
            print("Something is wrong...will add handling later.")
            return
        }
            
        //obtain data here
            var result: MyResult?
            do {
                result = try JSONDecoder().decode(MyResult.self, from:  data)
            }
            catch{
                print("failed to convert... Error:  \(error)")
            }
            
            guard let json = result else{
                return
            }
            
            print(json.max)
            print(json.average)
        })
        task.resume()
    }
        struct MyResult: Codable {
            let max: Double
            let min: Double
            let last: Double
            let bid: Double
            let ask: Double
            let average: Double
            let volume: Double
        }
        
    

}
