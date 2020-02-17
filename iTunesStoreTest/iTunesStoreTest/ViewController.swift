//
//  ViewController.swift
//  iTunesStoreTest
//
//  Created by Aleksey Usanov on 15.02.2020.
//  Copyright © 2020 Aleksey Usanov. All rights reserved.
//

import UIKit
import Kingfisher
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {
    private var result: [ResultItem]?
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var resultTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTableView.tableFooterView = UIView()
        searchBar.becomeFirstResponder()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let res = self.result {
            return res.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itunesResult") as! ITunesTableViewCell
        if let res = self.result {
            cell.imageContent.kf.setImage(with: ImageResource(downloadURL: URL(string: res[indexPath.row].artworkUrl100!)!, cacheKey: res[indexPath.row].artworkUrl100!))
            cell.albumLabel.text = res[indexPath.row].trackName
            cell.authorLabel.text = res[indexPath.row].artistName
            if let collectionName = res[indexPath.row].collectionName, let genre = res[indexPath.row].primaryGenreName {
                cell.collectionLabel.text = collectionName + " · " + genre
            } else {
                cell.collectionLabel.text = res[indexPath.row].collectionName
            }
        }
        return cell
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if searchText.count > 1 {
                SearchAPI.sh.search(text: searchText) { (result) in
                    self.result = result
                    self.resultTableView.reloadData()
                }
            } else {
                self.result = nil
                self.resultTableView.reloadData()
            }
        }
    }
}
