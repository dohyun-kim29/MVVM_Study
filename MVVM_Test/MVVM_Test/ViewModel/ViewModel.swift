//
//  ViewModel.swift
//  MVVM_Test
//
//  Created by DohyunKim on 2020/07/07.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

let view = View()
let model = IO()

let disposeBag = DisposeBag()

class ViewModel {
    
    func inputFunc() {
        view.txtInput.rx.text //an Error Ocurred in rx method
            .filter { $0 != nil }
            .map { $0! }
            .subscribe(onNext: { str in model.input },
                       onError: { err in print(err.localizedDescription) })
        .disposed(by: disposeBag)

    }
    
    func outputFunc() {
        model.input
            .subscribe(onNext: { str in model.output },
                              onError: { err in print(err.localizedDescription) })
        .disposed(by: disposeBag)
    }
    
    func bind() {
        view.lblOutput.text! = model.output
    }
    
}


