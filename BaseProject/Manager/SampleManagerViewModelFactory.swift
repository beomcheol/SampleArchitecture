//
//  SampleManagerViewModelFactory.swift
//  BaseProject
//
//  Created by Masher Shin on 11/27/17.
//  Copyright © 2017 Masher Shin. All rights reserved.
//

import Foundation

struct SampleManagerViewModelFactory {

    var requester: SampleManagerRequestProtocol

    init(managerRequester: SampleManagerRequestProtocol) {
        requester = managerRequester
    }

    func refresh(viewModel: SampleManagerViewModel) -> SampleManagerViewModel {
        var viewModel = viewModel
        viewModel.model = requester.request()
        return viewModel
    }

}
