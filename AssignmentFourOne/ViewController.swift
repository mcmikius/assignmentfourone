//
//  ViewController.swift
//  AssignmentFourOne
//
//  Created by Michail Bondarenko on 4/17/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let numberOfCubesPerLine = 5
    let size = 50
    let x = 20
    let y = 20
    let numberOfCubesPerTriangle = 3
    let xForTriangle = 20
    let yForTriangle = 210

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)

        drawSquareInLine(count: numberOfCubesPerLine, size: size, x: x, y: y)

        drawTriangle(count: numberOfCubesPerTriangle, size: size, x: xForTriangle, y: yForTriangle)

    }

    func drawSquare(size: Int, x: Int, y: Int) {
        let square = CGRect(x: x, y: y, width: size, height: size)
        let squareFrame = UIView(frame: square)
        squareFrame.backgroundColor = UIColor.gray
        view.addSubview(squareFrame)
    }

    func drawSquareInLine(count: Int, size: Int, x: Int, y: Int) {
        var x = x
        let y = y
        for _ in 0..<count {
            drawSquare(size: size, x: x, y: y)
            x += size + 5
        }

    }

    func drawTriangle(count: Int, size: Int, x: Int, y: Int) {
        var y = y
        var numberInLine = count
        for i in 0..<count {

            for _ in 0..<count {
                drawSquareInLine(count: numberInLine, size: size, x: x, y: y)
            }
            var x = x
            var y = y - (size + 5) * (i + 1)
            numberInLine -= 1
        }

    }





}

