//
//  ViewController.swift
//  swift学習
//
//  Created by 伊藤 剛 on 2017/04/06.
//  Copyright © 2017年 dw-test01. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var myLabl: UILabel!
    @IBOutlet var myButton: UIButton!
    @IBOutlet var myTextField: UITextField!
    @IBOutlet var myTableView: UITableView!
    var dataModels:DetaModel?
    
    override func viewWillAppear(_ animated: Bool) {
        myLabl.text = "TEXT"
        myButton.backgroundColor = UIColor.red
        myButton.setTitle("TAP!", for: UIControlState.normal)
        myTableView.delegate = self
        myTableView.dataSource = self;
        dataModels = DetaModel()
        dataModels?.test1 = myTextField.text ?? ""
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        let labelText:String = indexPath.row.description
        let tmp:String = labelText + ":" + (dataModels?.test1)!
        print(tmp)
        cell.textLabel?.text = tmp
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func TapMyButton(_ sender: Any) {
        dataModels?.test1 = myTextField.text ?? ""
        myTableView.reloadData()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

