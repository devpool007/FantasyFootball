//
//  ViewController2.swift
//  FanatasyFootball
//
//  Created by Devansh Sharma on 04/05/17.
//  Copyright © 2017 Devansh Sharma. All rights reserved.
//

import UIKit


class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var footballers = ["Diego Costa", "Ibrahimovic", "Lewandowski", "Lionel Messi", "Eden Hazard", "Gareth Bale", "Luis Suarez", "Marco Reus", "Neymar", "Hummels", "Jordi Alba", "Pepe", "Pique", "Sergio Ramos", "Buffon", "David De Gea", "Navas", "Neuer"]
    var clubnames = ["Chelsea", "Manchester United", "FC Bayern", "FC Barcelona", "Chelsea", "Real Madrid", "FC Barcelona", "Borusia Dortmund", "FC Barcelona", "Borusia Dortmund", "FC Barcelona", "Real Madrid", "FC Barcelona", "Real Madrid", "Juventus", "Manchester United", "Real Madrid", "FC Bayern"]
    
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return footballers.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
     let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.myimage.image = UIImage(named: (footballers[indexPath.row] + ".jpg"))
        cell.name.text =  footballers[indexPath.row]
        cell.clubname.text = clubnames[indexPath.row]
        cell.myswitch.isOn = false
                
        
        return (cell)
        
    }
    
    
    
        @IBAction func next(_ sender: Any) {
        
        
        view.backgroundColor = .blue
        self.performSegue(withIdentifier: "goForward", sender: self)
        
        
    }
    
      
     override func viewDidLoad() {
          super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
