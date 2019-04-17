//
//  ViewController.swift
//  AssignmentFourOne
//
//  Created by Michail Bondarenko on 4/17/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let numberOfCubesPerLine = 3

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        drawSquare()
        drawLine(number: numberOfCubesPerLine, startX: <#T##Double##Swift.Double#>, StartY: <#T##Double##Swift.Double#>)
    }

    func drawSquare() {
        let square = UIView()
        square.frame.size.width = 50
        square.frame.size.height = 50
        square.backgroundColor = .gray
        view.addSubview(square)
    }

    func drawOneSquare() {
        drawSquare()
    }

    func drawLine(number: Int, startX: Double, StartY: Double) {
        for i in 0..<number {
            drawSquare()
        }

    }





}

