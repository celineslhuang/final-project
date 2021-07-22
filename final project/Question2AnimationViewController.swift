//
//  Question2AnimationViewController.swift
//  final project
//
//  Created by Andrea Michelle Ramirez on 7/21/21.
//

import UIKit

class Question2AnimationViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var str = "such as journaling."

 override func viewDidLoad() {
     super.viewDidLoad()
     let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
         self.view.addGestureRecognizer(gesture)
         // Do any additional setup after loading the view.
     }
     
     @objc
     func onClickView() {
         
         for i in str {
             textLabel.text! += "\(i)"
             RunLoop.current.run(until:  Date()+0.12)
             
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

 }
