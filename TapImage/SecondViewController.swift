//
//  SecondViewController.swift
//  TapImage
//
//  Created by Midhet Sulemani on 05/10/16.
//  Copyright © 2016 Chintan Shah. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBAction func nextButton(sender: AnyObject) {
        var  num:Int = photoCount
    
        num += 1
        //secondImage.image = UIImage(contentsOfFile: Name[num])
        
         let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
       let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("SecondViewController") as! SecondViewController
       nextViewController.photoName = Name[num]
       nextViewController.photoCount = num
        self.navigationController?.pushViewController(nextViewController, animated: true)

//{
//    print("")
//        }
    
    }
    @IBAction func backButton(sender: AnyObject)
    {
        
    }
    var secondPhoto : UIImage! = nil
    var photoName: String!
    var photoCount: Int!
    override func viewDidLoad()
    {
        super.viewDidLoad()
//print("brooooo \(Name[photoCount])")
        print("eeee  \(Name.count)")
        print("pepeppp \(photoCount)")
        
        secondTextField.delegate = self
        secondTextField.returnKeyType = .Done

        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(SecondViewController.keyboardWillShow(_:)), name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(SecondViewController.keyboardWillHide(_:)), name: UIKeyboardWillHideNotification, object: nil)
        
        
        secondImage.image = UIImage(named: photoName)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        secondTextField.resignFirstResponder()
        return true
    }

    
    func keyboardWillShow(notification: NSNotification) {
        
        
        
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
            
            self.view.frame.origin.y -= keyboardSize.height
            
        }
        
        
        
    }
    
    
    
    func keyboardWillHide(notification: NSNotification) {
        
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
            
            self.view.frame.origin.y += keyboardSize.height
            
        }
        
        
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
