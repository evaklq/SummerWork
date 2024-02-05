//
//  ListTableViewCell.swift
//  Project
//
//  Created by Федор Дюльдев on 10.07.2023.
//

import UIKit

struct ListTableViewData{
    let title: String
    let image: UIImage
}

final class ListTableViewCell: UITableViewCell {
    
 @IBOutlet weak var titleLabel: UILabel!
 @IBOutlet weak var logoImageView: UIImageView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
        logoImageView.image = nil
    }
    
    func setUp(_ data: ListTableViewData) {
        titleLabel.text = data.title
        logoImageView.image = data.image
    }
}

