//
//  ViewController.swift
//  UISliderTable
//
//  Created by D7703_27 on 2018. 5. 3..
//  Copyright © 2018년 kwackjihoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.delegate = self
        myTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        let tableValue = String(Int(mySlider.value))
        
        cell.textLabel?.text = tableValue
        
        return cell
    }
    
    @IBAction func sliderMoved(_ sender: Any) {
        print("value: \(Int(mySlider.value))")
        
        // tableVIew 의 값을 reload
        myTableView.reloadData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

