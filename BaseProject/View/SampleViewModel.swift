//
//  ViewModel.swift
//  BaseProject
//
//  Created by Masher Shin on 11/27/17.
//  Copyright © 2017 Masher Shin. All rights reserved.
//

import Foundation

struct SampleViewModel {

    var model: Model

    var backgrondColor: (r: Float, g: Float, b: Float, a: Float) {
        return (model.red, model.green, model.blue, 0)
    }

    init() {
        model = Model()
    }

}
