//
//  BMICalculatorTests.swift
//  ios-xctest-demo
//
//  Created by OkuderaYuki on 2017/02/18.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import XCTest
@testable import ios_xctest_demo

class BMICalculatorTests: XCTestCase {
    
    /// テスト開始前に毎回呼ばれる
    override func setUp() {
        super.setUp()
    }
    
    /// テスト終了後に毎回呼ばれる
    override func tearDown() {
        super.tearDown()
    }
    
    func testCalculate() {
        let testHeight: Float = 1.8
        let testWeight: Float = 70.0
        
        // BMICalculator.calculateの返り値が21.6と等しいことをテスト
        XCTAssertEqual(BMICalculator.calculate(height: testHeight,
                                               weight: testWeight),
                       21.6)
    }
}
