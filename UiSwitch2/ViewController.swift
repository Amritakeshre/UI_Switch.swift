//
//  ViewController.swift
//  UiSwitch2
//
//  Created by Amrita on 13/02/17.
//  Copyright © 2017 iOSTrainer. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var careerSwitch: UISwitch!
    @IBOutlet weak var salarySwitch: UISwitch!
    @IBOutlet weak var blanceSwitch: UISwitch!
    
    
    
    private func handleSwitch1(){
        if careerSwitch.isOn,salarySwitch.isOn,blanceSwitch.isOn {
            blanceSwitch.setOn(false, animated: false)
        }
    }

    private func handleSwitch2(){
        if salarySwitch.isOn,careerSwitch.isOn,blanceSwitch.isOn{
            careerSwitch.setOn(false, animated: false)
        }
    }

    private func handleSwitch3(){
        if blanceSwitch.isOn,careerSwitch.isOn,salarySwitch.isOn{
            salarySwitch.setOn(false, animated: false)
        }
    }

    @IBAction func handleSwitch(_ sender: UISwitch) {
        switch sender.tag {
        case 100: //Career
            handleSwitch1()
        case 200: //Salary
            handleSwitch2()
        case 300: //Balance
            handleSwitch3()
        default:
            print("invalid input")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        careerSwitch.setOn(false, animated: false)
        salarySwitch.setOn(false, animated: false)
        blanceSwitch.setOn(false, animated: false)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

