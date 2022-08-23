//
//  ApiServices.swift
//  advice-generator-uikit
//
//  Created by Gabriel Santiago on 23/08/22.
//

import Foundation


struct ApiService {
    
    static func getAdvice () async -> Slip? {
        
        guard let url = URL(string: "https://api.adviceslip.com/advice") else {
            return nil
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        do{
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            let decodedData = try JSONDecoder().decode(Slip.self, from: data)
            return decodedData
        } catch{
            print(error)
            return nil
            
        }
    }
    
    
}
