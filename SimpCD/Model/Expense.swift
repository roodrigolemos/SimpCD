//
//  Expenses.swift
//  SimpCD
//
//  Created by Rodrigo Lemos on 13/11/20.
//

import Foundation

struct Expense {
    
    let name: String
    let value: String
    let date: String
    
    init(name: String, value: String, date: String) {
        self.name = name
        self.value = value
        self.date = date
    }
}
