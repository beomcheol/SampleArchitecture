//
//  ViewController.swift
//  BaseProject
//
//  Created by Masher Shin on 11/27/17.
//  Copyright © 2017 Masher Shin. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController {

    var viewModel = SampleViewModel() {
        didSet {
            view.backgroundColor = UIColor(
                red: CGFloat(viewModel.backgrondColor.r),
                green: CGFloat(viewModel.backgrondColor.g),
                blue: CGFloat(viewModel.backgrondColor.b),
                alpha: CGFloat(viewModel.backgrondColor.a)
            )
        }
    }

    var viewModelFactory = SampleViewModelFactory(viewRequester: SampleViewRequester())

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = viewModelFactory.refresh(viewModel: viewModel)
    }

}
