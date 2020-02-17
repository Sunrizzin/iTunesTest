//
//  SearchAPI.swift
//  iTunesStoreTest
//
//  Created by Aleksey Usanov on 16.02.2020.
//  Copyright © 2020 Aleksey Usanov. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import ObjectMapper
import Alamofire

class SearchAPI: API {
    static let sh = SearchAPI()
    private let baseUrl = "https://itunes.apple.com/search?term="
    
    func search(text: String, completionHandler: @escaping ([ResultItem]) -> ()) {
        DispatchQueue.global().async {
            Alamofire.request(URL(string: self.baseUrl + text)!, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseObject { (response: DataResponse<SearchResult>) in
                switch response.result {
                case .failure(let error):
                    print(error.localizedDescription)
                case .success(let value):
                    print(value)
                    if let result = value.results {
                        DispatchQueue.main.async {
                            completionHandler(result)
                        }
                    }
                }
            }
        }
    }
    
    
}
