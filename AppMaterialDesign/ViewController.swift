//
//  ViewController.swift
//  AppMaterialDesign
//
//  Created by Mettioui Nadia on 02/07/2020.
//  Copyright © 2020 Mettioui Nadia. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialActionSheet
import MaterialComponents.MaterialButtons


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupFloattingButton()
        setupFloattingButton2()
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let AlertButton  = UIButton(frame: CGRect(x: (view.frame.size.width-220)/2,
                                                  y: 50,
                                                  width: 220,
                                                  height: 50))
        AlertButton.setTitle("Alert", for: .normal)
        AlertButton.backgroundColor = .systemGreen
        AlertButton.addTarget(self, action: #selector(didTapAlert), for: .touchUpInside)
        view.addSubview(AlertButton)
        
        let ActionSheetButton  = UIButton(frame: CGRect(x: (view.frame.size.width-220)/2,
                                                        y: 100,
                                                        width: 220,
                                                        height: 50))
        ActionSheetButton.setTitle("ActionSheet", for: .normal)
        ActionSheetButton.backgroundColor = .systemBlue
        ActionSheetButton.addTarget(self, action: #selector(didTapACtionSheet), for: .touchUpInside)
        view.addSubview(ActionSheetButton)
    }
    
    @objc private func didTapAlert(){
        // Present a modal alert
        let alertController = MDCAlertController(title: "Log Out", message: "Sure to log out?")
        // adapter alert au darkmode
        alertController.backgroundColor = .systemBackground
        alertController.titleColor = .label
        alertController.messageColor = .secondaryLabel
        
        alertController.buttonTitleColor = .link
        let action = MDCAlertAction(title:"cancel") { (action) in print("OK") }
        alertController.addAction(action)
        let action2 = MDCAlertAction(title:"Log Out",emphasis: .high) { (action) in print("OK") }
         alertController.addAction(action2)

        present(alertController, animated:true, completion:nil)
        
    }
    @objc private func didTapACtionSheet(){
        let actionSheet = MDCActionSheetController(title: "Action Sheet",
                                                   message: "Secondary line text")
        // adapter le actionsheet au darkmode
        actionSheet.backgroundColor = .systemBackground
        actionSheet.titleTextColor = .label
        actionSheet.messageTextColor = .secondaryLabel
        actionSheet.actionTextColor = .label
        actionSheet.actionTintColor = .label
        let actionOne = MDCActionSheetAction(title: "Home",
                                             image: UIImage(systemName: "house"),
                                             handler: { _ in
                                                print("Home action" )
                                                
        })
        let actionTwo = MDCActionSheetAction(title: "Settings",
                                             image: UIImage(systemName: "gear"),
                                             handler: { _ in
                                                print("Email action")
                                                
        })
        actionSheet.addAction(actionOne)
        actionSheet.addAction(actionTwo)

        present(actionSheet, animated: true, completion: nil)
           
       }
    func setupFloattingButton(){
        let fab = MDCFloatingButton(frame: CGRect(x: (view.frame.size.width-220)/2,
        y: 150,
        width: 220,
        height: 50))
        fab.accessibilityLabel = "create"
        fab.minimumSize = CGSize(width: 64, height: 48)
        fab.setTitle("FloatingButton", for: .normal)
        fab.addTarget(self, action: #selector(disTappedFloatB), for: .touchUpInside)
        view.addSubview(fab)
    }
    @objc
    private func disTappedFloatB() {
        
    }
    func setupFloattingButton2(){
        var fab2 = MDCFloatingButton(shape: .default)
         fab2 = MDCFloatingButton(frame: CGRect(x: (view.frame.size.width-220)/2,
        y: 200,
        width: 220,
        height: 50))
        fab2.accessibilityLabel = "create"
        fab2.minimumSize = CGSize(width: 64, height: 48)
        fab2.setTitle("FloatingButtonShape", for: .normal)
        fab2.setBackgroundColor(.purple)
        fab2.setBorderColor(.black, for: .normal)
        view.addSubview(fab2)
    }
}


