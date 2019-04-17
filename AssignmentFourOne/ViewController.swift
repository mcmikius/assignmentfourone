//
//  ViewController.swift
//  AssignmentFourOne
//
//  Created by Michail Bondarenko on 4/17/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        drawSquare()
    }

    func drawSquare() {
        let square = UIView()
        square.frame.size.width = 50
        square.frame.size.height = 50
        square.frame.origin.x = 20
        square.frame.origin.y = 20
        square.backgroundColor = .gray
        view.addSubview(square)
    }





}

