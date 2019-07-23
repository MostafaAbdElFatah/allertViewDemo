//
//  ViewController.swift
//  Demo
//
//  Created by Mostafa Abd ElFatah on 7/23/19.
//  Copyright © 2019 Mostafa Abd ElFatah. All rights reserved.
//

import UIKit
import AMSmoothAlert
import FCAlertView
import CFAlertViewController

class ViewController: UIViewController {

    var alert:AMSmoothAlertView! = nil
    var alertView:FCAlertView!
    var alertController:CFAlertViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ///MARK:- AMSoothAlertView
        //alert = AMSmoothAlertView(dropAlertWithTitle: "Failed", andText: "Error Message you do mistake", andCancelButton: true, for: .success, andColor: .green)
        ///MARK:- FCAlertView
        alertView = FCAlertView(frame: self.view.frame)
        alertView.titleColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        alertView.titleFont = UIFont(name: "HelveticaNeue-Bold", size: 20.0)
        //alertView.fullCircleCustomImage = true
        //alertView.animateAlertOutToTop = true
        alertView.animateAlertOutToBottom = true
        alertView.animateAlertInFromTop = true
        //alertView.customImageScale = 1.5
        //alertView.darkTheme = true
        
        ///MARK:- CFAlertViewController
//        alertController = CFAlertViewController(title: "Failed",message: "Error Message you do mistake",textAlignment: .center,preferredStyle: .alert,didDismissAlertHandler: nil)
//        let imageView = UIImageView(image: UIImage(named: "error"))
//        imageView.contentMode = .center
//        alertController.headerView = imageView
//        let actionBtn = CFAlertAction(title: "Ok", style: .Cancel, alignment: CFAlertAction.CFAlertActionAlignment.center, backgroundColor: .white, textColor: .red, handler: nil)
//        alertController.addAction(actionBtn)
    }

    @IBAction func showAlert_btnClicked(_ sender: UIButton) {
        //alert.show()
        alertView.showAlert(withTitle: "Failed", withSubtitle: "Error Message you do mistake", withCustomImage: UIImage(named: "error") , withDoneButtonTitle: "Ok", andButtons:nil)
//        self.present(self.alertController, animated: true, completion: nil)
        
    }
    
}

