//
//  ITunesTableViewCell.swift
//  iTunesStoreTest
//
//  Created by Aleksey Usanov on 16.02.2020.
//  Copyright © 2020 Aleksey Usanov. All rights reserved.
//

import UIKit

class ITunesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageContent: UIImageView!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var collectionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
