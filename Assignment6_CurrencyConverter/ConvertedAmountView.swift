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
    
    @IBOutlet weak var audAmountLabel: UILabel!
    
    var usdValue : String = ""
    var eurVaue : String = ""
    var jpyValue : String = ""
    var gbpValue : String = ""
    var audValue : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
