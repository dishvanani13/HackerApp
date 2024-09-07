//
//  NetworkManager.swift
//  HackerApp
//
//  Created by Disha Limbani on 2024-09-02.
//

import Foundation
class NetworkManager : ObservableObject{
    
    @Published var post = [Post]()
    func fetchData(){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, responce, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    print("JSONNN")
                    if let safeData = data {
                        do {
                           let results =  try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.post = results.hits
                                print("DATA HERE")
                            }
                            
                        }catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
