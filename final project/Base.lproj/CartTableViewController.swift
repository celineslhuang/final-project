//
//  CartTableViewController.swift
//  final project
//
//  Created by Sydney Thomas on 7/20/21.
//

import UIKit

class CartTableViewController: UITableViewController {

    var cartLists : [CartCD] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getItems()
        
        //cartLists = createCart()
    }
    
    override func viewWillAppear(_ animated: Bool) {
      getItems()
    }
    
    func getItems() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let coreDataItems = try? context.fetch(CartCD.fetchRequest()) as? [CartCD] {
                cartLists = coreDataItems
                tableView.reloadData()
                
            }
            
        }
        
    }

    /*func createCart() -> [cart] {

      let shoes = cart()
    shoes.name = "Target Shoes"
    shoes.price = "9.50"

      let purse = cart()
    purse.name = "Gucci Purse"
    purse.price = "900.00"
      // important is set to false by default

      return [shoes, purse]
    }*/
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartLists.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let cart = cartLists[indexPath.row]
        
            cell.textLabel?.text = (cart.name ?? "failed to load item name") + " - " + (cart.price ?? "failed to load price")
    
              return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

     
      let celll = cartLists[indexPath.row]

        performSegue(withIdentifier: "moveToDone", sender: celll)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let addVC = segue.destination as? AddItemViewController{
            addVC.previousVC = self;
        }
        
        if let doneVC = segue.destination as? doneWithItemViewController{
            if let cart = sender as? CartCD {
                doneVC.selectedItem = cart
                doneVC.previousVC = self
                
                print(cart.name)
            }
        }
    }
    

}
