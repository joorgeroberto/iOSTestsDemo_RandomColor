//
//  ViewController.swift
//  TestsDemo_RandomColor
//
//  Created by Jorge de Carvalho on 28/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
    }

    @IBAction func generateRandomColor(_ sender: Any) {
        titleLabel.textColor = ColorRandomize.random()
    }
    
}

