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
        completion: @escaping (Result<[DayData], Error>) -> Void
    ) {
        let urlString : String
        switch scope{
        case .national1: urlString = "https://api.covidtracking.com/v2/us/daily.json"
        case .state(let state): urlString = "https://api.covidtracking.com/v2/states/\(state.state_code.lowercased())/daily.json"
        }
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) {data, _, error in
            guard let data = data, error == nil else { return }
            
            do{
                let result = try JSONDecoder().decode(CovidDataResponse.self, from: data)
                print(result.data.count)
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    public func getStateList(completion: @escaping (Result<[State], Error>) -> Void) {
        
        guard let url = constents.allStatesUrl else {return}
        
        let task = URLSession.shared.dataTask(with: url) {data, _, error in
            guard let data = data, error == nil else { return }
        
        do{
            let result = try JSONDecoder().decode(StateListResponse.self, from: data)
            let states = result.data
            completion(.success(states))
        }
        catch{
            completion(.failure(error))
        }
    }
    task.resume()
    
}


//MARK: - Models

struct StateListResponse: Codable{
    let data: [State]
}

struct State: Codable {
    let name: String
    let state_code: String
}

struct CovidDataResponse: Codable {
    let data: [CovidDayData]
}

struct CovidDayData: Codable {
    let cases: CovidCases
    let date: String
}

struct CovidCases: Codable {
    let total: TotalCases
}

struct TotalCases: Codable {
    let value: Int
}

struct DayData {
    let date: Date
    let count: Int
}
