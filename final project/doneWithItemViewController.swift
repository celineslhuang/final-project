//
//  doneWithItemViewController.swift
//  final project
//
//  Created by Sydney Thomas on 7/20/21.
//

import UIKit

class doneWithItemViewController: UIViewController {

    var previousVC = CartTableViewController()
    var selectedItem = cart()
    
    
    @IBOutlet weak var itemLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        itemLabel.text = selectedItem.name 
    }
    

   @IBAction func deleteTapped(_ sender: Any) {
       
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
