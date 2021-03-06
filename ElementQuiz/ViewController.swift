//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Evgenia Galetskaya on 11/27/18.
//  Copyright © 2018 Evgenia Galetskaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var answerLabel: UILabel!
    
    private let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    private var currentElementIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }
    
    @IBAction private func goToNextElement(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count{
            currentElementIndex = 0
        }
        updateElement()
    }
    
    @IBAction private func showAnswer(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    private func updateElement(){
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
}
