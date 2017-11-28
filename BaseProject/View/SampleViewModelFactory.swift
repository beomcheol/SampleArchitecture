//
//  ViewModelFactory.swift
//  BaseProject
//
//  Created by Masher Shin on 11/27/17.
//  Copyright © 2017 Masher Shin. All rights reserved.
//

import Foundation

struct SampleViewModelFactory {

    var requester: SampleViewRequestProtocol

    init(viewRequester: SampleViewRequestProtocol) {
        requester = viewRequester
    }

    func refresh(viewModel: SampleViewModel) -> SampleViewModel {
        var viewModel = viewModel
        viewModel.model = requester.request()
        return viewModel
    }

}
