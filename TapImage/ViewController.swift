//
//  ViewController.swift
//  TapImage
//
//  Created by Midhet Sulemani on 05/10/16.
//  Copyright © 2016 Chintan Shah. All rights reserved.
//

import UIKit

 var Name = ["appi", "buck", "jack" ,"ramu" ]

class ViewController: UIViewController{

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    
   
    
//    let tapGRec = UITavarstureRecognizer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
       imageView.userInteractionEnabled = true
        image2.userInteractionEnabled = true

        image3.userInteractionEnabled = true

        image4.userInteractionEnabled = true

        
        let aSelector : Selector = #selector(ViewController.TapFunc)
        var tapGesture = UITapGestureRecognizer(target : self , action  :aSelector)
        var tapGesture2 = UITapGestureRecognizer(target : self , action  : aSelector)
        var tapGesture3 = UITapGestureRecognizer(target : self , action  : aSelector)
        var tapGesture4 = UITapGestureRecognizer(target : self , action  : aSelector)
        
        imageView.tag = 0
        image2.tag = 1
        image3.tag = 2
        image4.tag = 3
        //tapGesture.delegate = self
       tapGesture.numberOfTapsRequired = 1
         tapGesture2.numberOfTapsRequired = 1
         tapGesture3.numberOfTapsRequired = 1
         tapGesture4.numberOfTapsRequired = 1
        
       self.imageView.addGestureRecognizer(tapGesture)
        self.image2.addGestureRecognizer(tapGesture2)
        self.image3.addGestureRecognizer(tapGesture3)
        self.image4.addGestureRecognizer(tapGesture4)
        
      print("hi this is Testiong   \(navigationController)")
//        tapGRec.addTarget(self, action: "TapFunc")
//        imageView.addGestureRecognizer(tapGRec)

        print("yoooooo")
    
        self.imageView.image = UIImage(named:"appi")
        self.image2.image = UIImage(named:"buck")
        self.image3.image = UIImage(named:"jack")
       self.image4.image = UIImage(named:"ramu")
       
        
    }
    
    
    func TapFunc(sender: UITapGestureRecognizer)  {
        //let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        //       self.performSegue(withIdentifier: "MySegue", sender: self)
        print("navigation controller: \(self.navigationController)")
       
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("SecondViewController") as! SecondViewController
        nextViewController.photoName = Name[sender.view!.tag]
        nextViewController.photoCount = sender.view?.tag
        self.navigationController?.pushViewController(nextViewController, animated: true)

//        if sender.view!.tag == 0
//        {
//        nextViewController.secondPhoto = imageView.image
//            nextViewController.photoName = Name[(sender.view?.tag)!]
//        }
//        else if sender.view!.tag == 1
//        {
//        nextViewController.secondPhoto = image2.image
//             nextViewController.photoName = Name[(sender.view?.tag)!]
//        }
//        else if sender.view!.tag == 2
//        {
//            nextViewController.secondPhoto = image3.image
//             nextViewController.photoName = Name[(sender.view?.tag)!]
//        }
//        else
//        {
//            nextViewController.secondPhoto = image4.image
//            nextViewController.photoName = Name[(sender.view?.tag)!]
//
//        }
        
              //        performSegue(withIdentifier: "MySegue", sender: self)
        //  let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        //let secondViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! SecondViewController
        
        // Set "Hello World" as a value to myStringValue
//        secondViewController.secondImage = imageView.image
        //secondViewController.secondPhoto = imageView.image
        
        // Take user to SecondViewController
        //self.navigationController?.pushViewController(secondViewController, animated: true)
        
        
        
        print("Tapped")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

