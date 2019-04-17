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
    }

    func drawSquare() {
        let square = CGRect(x: <#T##Int##Swift.Int#>, y: <#T##Int##Swift.Int#>, width: <#T##Int##Swift.Int#>, height: <#T##Int##Swift.Int#>)
        let squareFrame = UIView(frame: square)
        squareFrame.backgroundColor = UIColor.gray
        view.addSubview(squareFrame)





}

