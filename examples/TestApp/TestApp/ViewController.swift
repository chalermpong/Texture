//
//  ViewController.swift
//  TestApp
//
//  Created by Chalermpong Satayavibul on 6/12/2563 BE.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapButton(_ sender: Any) {
        self.present(TestTableNodeVC(), animated: true, completion: nil)
    }
    
}

