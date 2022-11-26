//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Minjae Lee on 2022/11/26.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
