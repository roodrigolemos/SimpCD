//
//  ExpenseTableViewCell.swift
//  SimpCD
//
//  Created by Rodrigo Lemos on 13/11/20.
//

import UIKit

class ExpenseTableViewCell: UITableViewCell {
    
    var expense: Expense? {
        didSet {
            guard let expense = expense else { return }
            
            expenseName.text = expense.name
            expenseValue.text = expense.value
            expenseDateBought.text = expense.date
        }
    }

    @IBOutlet weak var expenseName: UILabel!
    @IBOutlet weak var expenseDateBought: UILabel!
    @IBOutlet weak var expenseValue: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

