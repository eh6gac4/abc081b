//
//  main.swift
//  abc081b
//

import Foundation

// 標準エラーに文字列を出力
func printErr(_ str: String, terminator: String = "\n") {
    let string = str + terminator
    FileHandle.standardError.write(string.data(using: .utf8)!)
    FileHandle.standardError.synchronizeFile()
}

printErr("Ready...")

let count = Int(readLine()!)! // 入力される整数の個数
let inputStr = readLine()!.components(separatedBy: " ") // 入力される整数列
var inputInt = inputStr.map({Int($0)!}) // 整数型に変換

var output = 0
var finished = false

while 1 == 1 {
    for i in 0..<count {
        let int = inputInt[i]
        if int % 2 != 0 {
            finished = true
            break
        } else {
            inputInt[i] = int / 2
        }
    }
    if (finished) {
        break
    } else {
        output = output + 1
    }
}

print(output)
