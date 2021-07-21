//
//  AddItemViewController.swift
//  final project
//
//  Created by Sydney Thomas on 7/20/21.
//

import UIKit
import CoreData

class AddItemViewController: UIViewController {
var previousVC = CartTableViewController()
    
    @IBOutlet weak var itemtextField: UITextField!
   
    @IBOutlet weak var itempriceField: UITextField!
    
    
    @IBOutlet weak var itemdatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            return
        }
         let context = appDelegate.persistentContainer.viewContext
        
        let item = CartCD(context: context)
        
        item.name = itemtextField.text
        item.price = itemtextField.text
        
        appDelegate.saveContext()
        
        
        navigationController?.popViewController(animated: true)
        
        /* let item = cart()
       
        if let itemText = itemtextField.text {
            item.name = itemText
        }
        if let itemPrice = itempriceField.text {
            item.price = itemPrice
        }
        previousVC.cartLists.append(item)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)*/
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
