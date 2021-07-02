//
//  CurrentTimeRequest.swift
//   TestomatikaTest
//
//  Created by Admin on 11.06.2021.
//

import Foundation

struct CurrentTimeLA: Decodable {
    let formatted: String
}

class CurrentTimeRequest {
    
    static let shared = CurrentTimeRequest()
    
    private init() {}
    
    private let api = "https://api.timezonedb.com/v2.1/get-time-zone?key=TDBWTZRM3J2H&format=json&by=zone&zone=America/Los_Angeles"
    
    func getCurrentTimeLA() {
        
        guard let url = URL(string: api) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print("CurrentTimeRequest statusCode: \(error.localizedDescription)")
//                completionHandler(Date())
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("CurrentTimeRequest response statusCode: \(response.statusCode)")
            }
            
            guard let data = data else { return }
            
            do {
                let currentTime = try JSONDecoder().decode(CurrentTimeLA.self, from: data)
                let date = self.convertToDate(currentTime.formatted)
//                UserDefaultsManager.shared.subscriptionEndDate = date
                print(date)
//                completionHandler(date)
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    private func convertToDate(_ dateString: String) -> Date {

        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(identifier: "UTC")
        dateFormatter.dateFormat = "yyyy-MM-dd-hh:mm:ss"
        
        return dateFormatter.date(from: dateString) ?? Date()
    }
}
