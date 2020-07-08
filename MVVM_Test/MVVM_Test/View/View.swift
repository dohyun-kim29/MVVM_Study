//
//  ViewController.swift
//  MVVM_Test
//
//  Created by DohyunKim on 2020/07/07.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class View: UIViewController {
    
    let viewmodel = ViewModel()

    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var lblOutput: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtInput.text! = ""
        lblOutput.text! = ""
        
        viewmodel.inputFunc()
        viewmodel.transform()
        viewmodel.bind()
    }


}

