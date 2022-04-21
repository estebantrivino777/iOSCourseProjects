//
//  NetworkManager.swift
//  H4CK0R News SwiftUI
//
//  Created by Esteban Rafael Trivino Guerra on 7/02/22.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) {
            (data, response, error) in
            if let e = error {
                print("error \(e)")
            } else {
                if let postsData = data {
                    do {
                        let result = try JSONDecoder().decode(Results.self, from: postsData)
                        DispatchQueue.main.async {
                            self.posts = result.hits
                        }
                    } catch {
                        print("error: \(error.localizedDescription)")
                    }
                }
            }
        }
        task.resume()
    }
}
