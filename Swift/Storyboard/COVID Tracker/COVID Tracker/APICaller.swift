//
//  APICaller.swift
//  COVID Tracker
//
//  Created by GSM02 on 2021/09/23.
//

import Foundation

class APICaller {
    static let shared = APICaller()
    
    private init() {}
    
    private struct constents {
        static let allStatesUrl = URL(string: "https://api.covidtracking.com/v2/states.json")
    }
    
    enum DataScope {
        case national1
        case state(State)
    }
    
    public func getCovidData(
        for scope: DataScope,
        completion: @escaping (Result<String, Error>) -> Void
    ) {
        guard let url = constents.allStatesUrl else { return }
        
        let task = URLSession.shared.dataTask(with: url) {data, _, error in
            guard let data = data, error == nil else { return }
            
            do{
                let result = try JSONDecoder().decode(StateListResponse.self, from: data)
                let states = result.data
                completion(.success(states))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    public func getStateList(completion: @escaping (Result<[State], Error>) -> Void) {}
    
}


//MARK: - Models

struct StateListResponse: Codable{
    let data: [State]
}

struct State: Codable {
    let name: String
    let state_code: String
}
