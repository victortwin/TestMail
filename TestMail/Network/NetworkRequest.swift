//
//  NetworkRequest.swift
//  TestMail
//
//  Created by Victor Tormyshev on 27.02.2024.
//

import Foundation

class NetworkRequest {
    
    static let shared = NetworkRequest()
    private init(){}
        
    func requestData(verifiableMail: String, completion: @escaping(Result<Data, Error>) -> Void) {
        
        let urlString = "https://api.kickbox.com/v2/verify?email=\(verifiableMail)&apikey=\(apiKey)"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    completion(.failure(error))
                    return
                }
                guard let data = data else { return }
                completion(.success(data))
            }
        }
        .resume()
    }
}
