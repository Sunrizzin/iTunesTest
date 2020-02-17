//
//  API.swift
//  iTunesStoreTest
//
//  Created by Aleksey Usanov on 16.02.2020.
//  Copyright © 2020 Aleksey Usanov. All rights reserved.
//

import Foundation

protocol API {
    func search(text: String, completionHandler: @escaping ([ResultItem]) -> ())
}
