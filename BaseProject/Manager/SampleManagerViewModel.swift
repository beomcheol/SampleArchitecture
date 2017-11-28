//
//  SampleManagerViewModel.swift
//  BaseProject
//
//  Created by Masher Shin on 11/27/17.
//  Copyright © 2017 Masher Shin. All rights reserved.
//

import Foundation

struct SampleManagerViewModel {

    var model: Model

    var message: String {
        return String(model.blue) + String(model.green) + String(model.red)
    }

    init() {
        model = Model()
    }

}
