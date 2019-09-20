//
//  ViewController.swift
//  Ems-Myapp
//
//  Created by Nilrajsinh Vaghela on 20/09/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    var Menu = [
    
        ["Title":"Sign UP", "Controller":"RedScene"],
        ["Title":"Sign In", "Controller":"GreenScene"]
    
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell" , for: indexPath )
        cell.textLabel?.text = Menu[indexPath.row]["Title"]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: Menu[indexPath.section]["Controller"]!)
        self.navigationController?.pushViewController(controller!, animated: true)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

