//
//  test.swift
//  XCTestSample
//
//  Created by home on 2021/03/08.
//

import Foundation

func validate(password: String) -> Bool {
    // 8文字より少なければNG
    if password.count <= 7 {
        return false
    }
    
    // "components(separatedBy:)"はseparatedByで指定した条件で文字列を分割した文字列が入った配列を返す
    // "CharacterSet.decimalDigits"は10進数で表現する文字
    // "inverted"は反転を意味する。今回は数字以外の文字列が空（""）になる。
    // "joined"は配列の各要素を1つの文字列に結合する
    let numString = password.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
    return numString.count >= 2
}

func asyncString(completion: ((String) -> ())?) {
    DispatchQueue.global().async {
        sleep(3)
        
        completion?("文字列A")
    }
}
