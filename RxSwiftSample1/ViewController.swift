//
//  ViewController.swift
//  RxSwiftSample1
//
//  Created by 鶴本 賢太朗 on 2020/07/21.
//  Copyright © 2020 鶴本 賢太朗. All rights reserved.
//

import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    private let disposeBag = DisposeBag()
    private let viewModel: ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let _ = self.viewModel.event.subscribe(onNext: { value in
            self.resultLabel.text = "\(value)"
        }).disposed(by: self.disposeBag)
    }
    
    @IBAction func didTapCountButton(_ sender: Any) {
        self.viewModel.countUp()
    }
}

