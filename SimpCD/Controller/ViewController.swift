//
//  ViewController.swift
//  SimpCD
//
//  Created by Rodrigo Lemos on 13/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    let expenses: [Expense] = [Expense(name: "Netflix", value: "25,00", date: "29/10"),
                               Expense(name: "Sorvete", value: "10,00", date: "29/10"),
                               Expense(name: "Lets Build That App", value: "25", date: "29/10"),
                               Expense(name: "Uninorte", value: "1350,00", date: "29/10"),
                               Expense(name: "Parcela Carro", value: "1200,00", date: "29/10"),
                               Expense(name: "League Pass", value: "25,00", date: "29/10"),
                               Expense(name: "NFL Game Pass", value: "400,00", date: "29/10"),
                               Expense(name: "DB", value: "30,00", date: "29/10"),
                               Expense(name: "Cinema", value: "70,00", date: "29/10"),
                               Expense(name: "Amazon Prime", value: "9,00", date: "10/10")
                              ]

    @IBOutlet weak var monthCollectionView: UICollectionView!
    @IBOutlet weak var expensesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monthCollectionView.dataSource = self
        monthCollectionView.delegate = self
        expensesTableView.dataSource = self
        expensesTableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = expensesTableView.dequeueReusableCell(withIdentifier: "expenseCell", for: indexPath) as! ExpenseTableViewCell
        cell.expense = expenses[indexPath.row]
        return cell
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = monthCollectionView.dequeueReusableCell(withReuseIdentifier: "monthCell", for: indexPath)
        return cell
    }
}

