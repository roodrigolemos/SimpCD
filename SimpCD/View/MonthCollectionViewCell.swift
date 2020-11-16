//
//  MonthCollectionViewCell.swift
//  SimpCD
//
//  Created by Rodrigo Lemos on 16/11/20.
//

import UIKit

class MonthCollectionViewCell: UICollectionViewCell {
    
    var date: MonthYear? {
        didSet {
            guard let date = date else { return }
            
            let currentYear = Date().getCurrentYear()
            if date.year == currentYear {
                monthAndYear.text = "\(date.month)"
            } else {
                monthAndYear.text = "\(date.month) \(date.year)"
            }
        }
    }
    @IBOutlet weak var monthAndYear: UILabel!
}
