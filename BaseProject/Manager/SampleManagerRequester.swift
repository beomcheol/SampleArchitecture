//
//  SampleManagerRequester.swift
//  BaseProject
//
//  Created by Masher Shin on 11/27/17.
//  Copyright © 2017 Masher Shin. All rights reserved.
//

import Foundation

protocol SampleManagerRequestProtocol {

    func request() -> Model

}

struct SampleManagerRequester: SampleManagerRequestProtocol {

    func request() -> Model {
        // TODO: 새로운 모델을 가져온다
        return Model()
    }

}
