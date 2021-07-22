//
//  doneWithItemViewController.swift
//  final project
//
//  Created by Sydney Thomas on 7/20/21.
//

import UIKit

class doneWithItemViewController: UIViewController {

    var previousVC = CartTableViewController()
    var selectedItem : CartCD?
    
    
    @IBOutlet weak var itemLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        itemLabel.text = selectedItem?.name
        print(selectedItem?.name!)
    }
    

       
 
    
    @IBAction func doneTapped(_ sender: UIButton) {
        
              
          
         if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
           
           if let theItem = selectedItem {
                context.delete(theItem)
            navigationController?.popViewController(animated: true)
                }
        }
    }
    
    
    
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



  /*  @IBAction func deleteTapped(_ sender: Any) {
        
     guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
         return
     }
     
     
     let context = appDelegate.persistentContainer.viewContext
     
     
     if let theItem = selectedItem {
         context.delete(theItem); navigationController?.popViewController(animated: true)
         }
     }
*/
