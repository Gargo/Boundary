//
//  BashBox.swift
//  Linear
//
//  Created by Admin on 4.05.22.
//

import Foundation

class BashBox {
    static let shared = BashBox()

    func shell(_ command: String, task: Process = Process(), pipe: Pipe = Pipe()) -> String {
        task.standardOutput = pipe
        task.standardError = pipe
        task.arguments = ["-c", command]
        task.launchPath = "/bin/zsh"
        task.standardInput = nil
        task.launch()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)!

        return output
    }

    func test() {
        let str = shell("echo hello")
        print(str)
    }
}
