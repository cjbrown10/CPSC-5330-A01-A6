//
//  ConvertedAmountViewController.swift
//  Assignment6_CurrencyConverter
//
//  Created by Colby Brown on 2/11/26.
//

import UIKit

class ConvertedAmountView: UIViewController {
    
    
    @IBOutlet weak var usdAmountLabel: UILabel!
    
    @IBOutlet weak var eurAmountLabel: UILabel!
    
    @IBOutlet weak var jpyAmountLabel: UILabel!
    
    @IBOutlet weak var gbpAmountLabel: UILabel!
    
    @IBOutlet weak var nzdAmountLabel: UILabel!
    
    var usdValue : String = ""
    var eurValue : String = ""
    var jpyValue : String = ""
    var gbpValue : String = ""
    var nzdValue : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usdAmountLabel.text = usdValue
        eurAmountLabel.text = eurValue
        jpyAmountLabel.text = jpyValue
        gbpAmountLabel.text = gbpValue
        nzdAmountLabel.text = nzdValue

        // Do any additional setup after loading the view.
    }

    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
