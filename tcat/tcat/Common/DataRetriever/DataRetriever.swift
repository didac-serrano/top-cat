//
//  DataRetriever.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 28/5/23.
//

import Foundation

struct URLDataRetriever {
    
    func retrieve<T>(url: String, resultBlock: @escaping (Result<T, Error>) -> Void) where T: Codable {
        guard let url = URL(string: url) else {
            assertionFailure("wrong url format")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Client-ID 7f8087203b9fbdb", forHTTPHeaderField: "Authorization")
        request.timeoutInterval = 60.0
        
        /** do not use error, as imgur API encapsulates error responses within data  */
        let task = URLSession.shared.dataTask(with: request) { (data, response, _) in
            
            if let r = response as? HTTPURLResponse {
                print(r.statusCode)
            }
            
            guard let d = data else { return }
            print(String(data: d, encoding: String.Encoding.utf8)!)
            
            do {
                let json = try JSONDecoder().decode(T.self, from: d)
                resultBlock(Result.success(json))
            } catch let DecodingError.dataCorrupted(context) {
                print(context)
                resultBlock(Result.failure(DecodingError.dataCorrupted(context)))
            } catch let DecodingError.keyNotFound(key, context) {
                print("Key '\(key)' not found:", context.debugDescription)
                print("codingPath:", context.codingPath)
                resultBlock(Result.failure(DecodingError.keyNotFound(key, context)))
            } catch let DecodingError.valueNotFound(value, context) {
                print("Value '\(value)' not found:", context.debugDescription)
                print("codingPath:", context.codingPath)
                resultBlock(Result.failure(DecodingError.valueNotFound(value, context)))
            } catch let DecodingError.typeMismatch(type, context)  {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
                resultBlock(Result.failure(DecodingError.typeMismatch(type, context)))
            } catch {
                print("error: ", error)
                resultBlock(Result.failure(error))
            }
        }
        task.resume()
    }
}

