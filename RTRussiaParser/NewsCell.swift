//
//  NewsCell.swift
//  RTRussiaParser
//
//  Created by Core on 08.10.17.
//  Copyright © 2017 Cornelius. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func commonInit(title: String, text: String) {
        newsImage.image = UIImage(named: "noImage.png")
        newsTitle.text = title
        newsText.text = text
    }
}
