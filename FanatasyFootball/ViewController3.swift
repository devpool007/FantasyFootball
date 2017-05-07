//
//  ViewController3.swift
//  FanatasyFootball
//
//  Created by Devansh Sharma on 06/05/17.
//  Copyright © 2017 Devansh Sharma. All rights reserved.
//

import UIKit
import SwiftyButton

class ViewController3: UIViewController,UITableViewDataSource, UITableViewDelegate{
    
    var footballers = ["Diego Costa", "Ibrahimovic", "Lewandowski", "Lionel Messi", "Eden Hazard", "Gareth Bale", "Luis Suarez", "Marco Reus", "Neymar", "Hummels", "Jordi Alba", "Pepe", "Pique", "Sergio Ramos", "Buffon", "David De Gea", "Navas", "Neuer"]
    var clubnames = ["Chelsea", "Manchester United", "FC Bayern", "FC Barcelona", "Chelsea", "Real Madrid", "FC Barcelona", "Borusia Dortmund", "FC Barcelona", "Borusia Dortmund", "FC Barcelona", "Real Madrid", "FC Barcelona", "Real Madrid", "Juventus", "Manchester United", "Real Madrid", "FC Bayern"]
    
    

    
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return footballers.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell1.myimage.image = UIImage(named: (footballers[indexPath.row] + ".jpg"))
        cell1.name.text =  footballers[indexPath.row]
        cell1.clubname.text = clubnames[indexPath.row]
        cell1.myswitch.isOn = false
        return (cell1)
            
    }
    
    
    
    @IBAction func next2(_ sender: Any) {
        
        view.backgroundColor = .red
        self.performSegue(withIdentifier: "gogo", sender: self)

    }
    
    override func viewDidLoad() {
                super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var goBack: UIBarButtonItem!
    @IBAction func goBackFirse(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }

    

}
