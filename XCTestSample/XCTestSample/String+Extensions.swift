//
//  String+Extensions.swift
//  XCTestSample
//
//  Created by home on 2021/03/11.
//

import Foundation

extension String {
    func isOnlyNumeric() -> Bool {
        // 文字列を.decimalDigitsのみでトリミングした場合に存在する文字の数が0個以下
        return self.trimmingCharacters(in: .decimalDigits).count <= 0
    }
}
