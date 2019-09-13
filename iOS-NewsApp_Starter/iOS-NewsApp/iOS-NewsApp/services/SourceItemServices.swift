//
//  SourceItemServices.swift
//  iOS-NewsApp
//
//  Created by Medi Assumani on 9/12/19.
//  Copyright © 2019 Make School. All rights reserved.
//

import Foundation


struct SourceItemService {
    
    // - MARK: Class Properties
    static let shared = SourceItemService()
    private let urlScheme = "https"
    private let baseURLString = "newsapi.org/v1"
    private let sourcesEndpoint = "/sources"
    
    
    // - MARK: Class Function
        
    // Function that fetches all Source items from newsapi.org...
    func fetchSources(completion: @escaping(Response) -> ()) {
        
        // Set up URLSession, URL, and URLRequest
        let session = URLSession(configuration: .default)
        guard let url = URL(string: self.urlBuilder()!) else { return }
        let urlRequest = URLRequest(url: url)
        
        // Execute dataTask and call
        let task = session.dataTask(with: urlRequest, completionHandler: {
            (data, response, error) -> Void in
            
            do {
                let object = try JSONDecoder().decode(Response.self, from: data!)
                completion(object)
                
            } catch {
                print("oops error")
            }
            
        })
        task.resume()
    }
    
    private func urlBuilder() -> String? {
        
        var components = URLComponents()
        components.scheme = urlScheme
        components.host = baseURLString
        components.path = sourcesEndpoint
        
        if let urlAsString = components.url?.absoluteString {
            let percentDecodedURL = urlAsString.decodeUrl()
            return percentDecodedURL
        } else {
            return "Invalid URL"
        }
    }
}
