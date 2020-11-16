//
//  Utilities.swift
//  SimpCD
//
//  Created by Rodrigo Lemos on 16/11/20.
//

import UIKit

extension Date {
           
    func getCurrentDay() -> Int {
        let date = Date()
        let calendar = Calendar.current
        let day = calendar.component(.day, from: date)
        return day
    }
    
    func getCurrentMonth() -> Int {
        let date = Date()
        let calendar = Calendar.current
        let month = calendar.component(.month, from: date)
        return month
    }
    
    func getCurrentYear() -> Int {
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        return year
    }
    
//    func getNextMonthAsInt() -> Int {
//        let date = Date()
//        let calendar = Calendar.current
//        let components = calendar.dateComponents([.month], from: date)
//        let month = components.month
//        guard let monthUnwrapped = month else { return -1 }
//        return monthUnwrapped + 1
//    }
//
//    func getPreviousMonthAsInt() -> Int {
//        let date = Date()
//        let calendar = Calendar.current
//        let components = calendar.dateComponents([.month], from: date)
//        let month = components.month
//        guard let monthUnwrapped = month else { return -1 }
//        return monthUnwrapped - 1
//    }
//    
//    func getCurrentMonth() -> Int {
//        let date = Date()
//        let calendar = Calendar.current
//        let components = calendar.dateComponents([.month], from: date)
//        let month = components.month
//        guard let monthUnwrapped = month else { return -1 }
//        return monthUnwrapped
//    }
    
    func monthIntToEnum(monthInInt: Int) -> Month {
        switch monthInInt {
        case 1:
            return Month.january
        case 2:
            return Month.february
        case 3:
            return Month.march
        case 4:
            return Month.april
        case 5:
            return Month.may
        case 6:
            return Month.june
        case 7:
            return Month.july
        case 8:
            return Month.august
        case 9:
            return Month.september
        case 10:
            return Month.october
        case 11:
            return Month.november
        case 12:
            return Month.december
        default:
            return Month.december
        }
    }
}
