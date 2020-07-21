//
//  ViewModel.swift
//  RxSwiftSample1
//
//  Created by 鶴本 賢太朗 on 2020/07/21.
//  Copyright © 2020 鶴本 賢太朗. All rights reserved.
//

import RxSwift

class ViewModel: NSObject {
    private let subject: PublishSubject<Int> = PublishSubject<Int>()
    private var count: Int = 0
    internal var event: Observable<Int> {
        return subject
    }
    func countUp() {
        self.count += 1
        self.subject.onNext(self.count)
    }
}
