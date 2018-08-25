//
//  TableViewCell.swift
//  Adapters
//
//  Created by Konrad on 25/08/2018.
//  Copyright © 2018 Konrad. All rights reserved.
//

import Foundation
import UIKit

class CellPresenter: ItemPresenter {
    var id: String {
        return TableViewCell.reusableIdentifier
    }
    var model: ItemModel?
    
    init(model: ItemModel?) {
        self.model = model
    }
    
    func size(for list: UIList, model: ItemModel?) -> CGSize {
        return CGSize(width: list.bounds.width, height: 44)
    }
    
    func configure(item: UIView) {
        let cell: TableViewCell = item as! TableViewCell
        let model: String? = self.model as? String
        cell.titleLabel.text = model
    }
    
    func selected() { }
}

class TableViewCell: UITableViewCell, CellProtocol {
    static var reusableIdentifier: String {
        return "TableViewCell"
    }
    
    static var nib: UINib {
        return UINib(nibName: "TableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var titleLabel: UILabel!
}
