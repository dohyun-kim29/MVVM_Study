//
//  Model.swift
//  MVVM_Test
//
//  Created by DohyunKim on 2020/07/07.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class IO {
    let input : BehaviorSubject<String> = BehaviorSubject(value: "")
    var output : String = ""
}
