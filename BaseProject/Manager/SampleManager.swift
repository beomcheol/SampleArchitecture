//
//  SampleManager.swift
//  BaseProject
//
//  Created by Masher Shin on 11/27/17.
//  Copyright © 2017 Masher Shin. All rights reserved.
//

import Foundation

class SampleManager {

    static let `default` = SampleManager(managerRequester: SampleManagerRequester())

    var viewModel = SampleManagerViewModel()

    lazy var factory = SampleManagerViewModelFactory(managerRequester: requester)

    let requester: SampleManagerRequestProtocol

    var presenter: SampleManagerPresentProtocol?

    init(managerRequester: SampleManagerRequestProtocol) {
        self.requester = managerRequester
    }

    func sample() {
        viewModel = factory.refresh(viewModel: viewModel)
    }

}
