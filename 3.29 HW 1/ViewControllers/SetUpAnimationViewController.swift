//
//  ViewController.swift
//  3.29 HW 1
//
//  Created by Юлия on 13.09.2022.
//

import UIKit
import SpringAnimation

final class setUpAnimationViewController: UIViewController {
   
    @IBOutlet var animationView: UIView!
    @IBOutlet var runAnimationButton: UIButton!
    
    private let animations = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAnimatiomView()
    }
    
    @IBAction func runAnimationButtonPressed() {
        
    }
    
    private func setUpAnimatiomView() {
        
    }
}
