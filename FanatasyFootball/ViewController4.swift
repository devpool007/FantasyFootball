


import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        
        setuplabel()
        super.viewDidLoad()
        
        
    }

    @IBOutlet weak var congrats: UILabel!
    
    @IBOutlet weak var goback: UIBarButtonItem!
    
    @IBAction func gobacke(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)

    }
    
    
    func setuplabel(){
        view.backgroundColor = .green
        congrats.text = "Well Done 👍🏻"
        congrats.font = UIFont(name: "Zapfino", size: 25)
        congrats.textColor = .black
    }
    
}
