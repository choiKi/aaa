//
//  ViewController.swift
//  aaa
//
//  Created by 최기훈 on 2022/01/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var aView : UILabel!
    @IBOutlet var bView : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        previewview()
    }
    func previewview() {
        let views: [String : Any] = ["a": aView!, "b": bView!]
        let layout1 = "H:|-[a]-|"
        let layout2 = "H:|-30-[b]-30-|"
        let layout3 = "V:|-50-[a(100)]"
        let layout4 = "V:[a]-20-[b(100)]"
        var constraint = NSLayoutConstraint.constraints(withVisualFormat: layout1, options: [], metrics: nil, views: views)
        constraint += NSLayoutConstraint.constraints(withVisualFormat: layout2, options: [], metrics: nil, views: views)
        constraint += NSLayoutConstraint.constraints(withVisualFormat: layout3, options: [], metrics: nil, views: views)
        constraint += NSLayoutConstraint.constraints(withVisualFormat: layout4, options: [], metrics: nil, views: views)
        
        view.addConstraints(constraint)
        
  


    }


}

