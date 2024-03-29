//
//  ViewController.swift
//  AssignmentFourOne
//
//  Created by Michail Bondarenko on 4/17/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let colorOne = UIColor.gray
    let colorTwo = UIColor.red
    let numberOfCubesPerLine = 5
    let size = 20
    let x = 20
    let y = 20
    let numberOfCubesPerTriangle = 3
    let xForTriangle = 20
    let yForTriangle = 110
    let numberOfCubePerPyramide = 4
    let xForPyramide = 20
    let yForPyramide = 250
    let numberTargetCircle = 3
    let baseCircleSize = 100
    let xForTarget = 50
    let yForTarget = 400

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)

        drawSquareInLine(count: numberOfCubesPerLine, size: size, color: colorOne, x: x, y: y)

        drawTriangle(count: numberOfCubesPerTriangle, size: size, color: colorTwo, x: xForTriangle, y: yForTriangle)

        drawPyramide(count: numberOfCubePerPyramide, size: size, color: colorOne, x: xForPyramide, y: yForPyramide)

        drawTarget(count: numberTargetCircle, baseSize: baseCircleSize, colorOne: colorOne, colorTwo: colorTwo, x: xForTarget, y: yForTarget)

    }

    func drawSquare(size: Int, color: UIColor, x: Int, y: Int, cornerRadius: Int) {
        let square = CGRect(x: x, y: y, width: size, height: size)
        let squareFrame = UIView(frame: square)
        squareFrame.backgroundColor = color
        squareFrame.layer.cornerRadius = CGFloat(cornerRadius)
        squareFrame.layer.masksToBounds = true
        view.addSubview(squareFrame)
    }
//1. Строку из указаного количества кубиков
    func drawSquareInLine(count: Int, size: Int, color: UIColor, x: Int, y: Int) {
        var x = x
        let y = y
        let color = color
        let cornerRadius = 0
        for _ in 0..<count {
            drawSquare(size: size, color: color, x: x, y: y, cornerRadius: cornerRadius)
            x += size + 5
        }

    }
//2. Лесенку с указанным количеством кубиков в основе
    func drawTriangle(count: Int, size: Int, color: UIColor, x: Int, y: Int) {
        let color = color
        var y = y
        var numberInLine = count
        for _ in 0..<count {
            for _ in 0..<count {
                drawSquareInLine(count: numberInLine, size: size, color: color, x: x, y: y)
            }
            _ = x
            y = y - (size + 5)
            numberInLine -= 1
        }

    }
//3. Пирамиду с указанным количеством кубиков в основе
    func drawPyramide(count: Int, size: Int, color: UIColor, x: Int, y: Int) {
        let color = color
        var y = y
        var x = x
        var numberInLine = count
        for _ in 0..<count {
            for _ in 0..<count {
                drawSquareInLine(count: numberInLine, size: size, color: color, x: x, y: y)
            }
            x += (size + 5) / 2
            y = y - (size + 5)
            numberInLine -= 1
        }
    }
//    1. Цель - квадратную. Найти в интернете как скруглить UIView, сделать цель круглой
    func drawTarget(count: Int, baseSize: Int, colorOne: UIColor, colorTwo: UIColor, x: Int, y: Int) {
        var x = x
        var y = y
        let colorOne = colorOne
        let colorTwo = colorTwo
        var size = baseSize
        var count = count
        var cornerRadius = 0
        for _ in 0..<count {
            cornerRadius = size / 2
            drawSquare(size: size, color: count % 2 == 0 ? colorOne : colorTwo, x: x, y: y, cornerRadius: cornerRadius)
            size = size / 2
            x += size / 2
            y += size / 2
            count -= 1
        }

    }





}

