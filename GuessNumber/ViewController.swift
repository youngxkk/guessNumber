//
//  ViewController.swift
//  hitme
//
//  Created by youngxkk on 2018/6/3.
//  Copyright © 2018 youngxkk. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    //下面是随机数生成
    func randomNumb() {
        arc4random_uniform(100)
//        let randomNumber = Int(arc4random() % 100) + 1
    }
    

    var hitCount = 0{
        didSet{
            hitCountNum.text = ("\(hitCount)")
        }
    }
    
    var slideCount = 0{
        didSet{
            slideNum.text = ("你滑的是\(slideCount)")
        }
    }
    
    @IBOutlet weak var randomNum: UILabel!
    @IBOutlet weak var hitCountNum: UILabel!
    @IBOutlet weak var slideNum: UILabel!
    @IBAction func showAlert(_ sender: UIButton) {
        hitCount += 1
        randomNum.text = ("\(arc4random_uniform(100))")
    }

    @IBAction func slideMoveNum(_ sender: UISlider, forEvent event: UIEvent) {
        let slideMoveNum:Int = Int(sender.value as Float)
        print("\(sender.value)")
        slideNum.text = "\(slideMoveNum)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

