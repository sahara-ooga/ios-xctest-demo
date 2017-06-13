//
//  ImageDownloadTests.swift
//  ios-xctest-demo
//
//  Created by OkuderaYuki on 2017/02/18.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import XCTest
@testable import ios_xctest_demo

class ImageDownloadTests: XCTestCase {
    var imageDownload: ImageDownload?
    
    /// テスト開始前に毎回呼ばれる
    override func setUp() {
        super.setUp()
        imageDownload = ImageDownload()
    }
    
    /// テスト終了後に毎回呼ばれる
    override func tearDown() {
        imageDownload = nil
        super.tearDown()
    }
    
    func testFetchImage() {
        
        let expectation = self.expectation(description: "FetchImage")
        
        let urlString = "https://images-na.ssl-images-amazon.com/images/I/619XgyIYnBL._AC_UL115_.jpg"
        imageDownload?.fetchImage(urlString: urlString,
                                  completionHandler:{ (data, response, error) in
            // errorがnilであることをテスト
            XCTAssertNil(error)
                                    
            // dataがnilでないことをテスト
            XCTAssertNotNil(data)
            expectation.fulfill()
        })
        
        // 1.0秒以内に非同期処理が完了していることをテスト
        self.waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    /// パフォーマンステスト
    func testPerformanceFetchImage() {
        
        measure { [weak self] () in
            guard let weakSelf = self else { return }
            
            let expectation = weakSelf.expectation(description: "FetchImage")
            let testUrlString = "https://images-na.ssl-images-amazon.com/images/I/619XgyIYnBL._AC_UL115_.jpg"
            
            weakSelf.imageDownload?.fetchImage(urlString: testUrlString,
                                               completionHandler:{ (data, response, error) in
                XCTAssertNil(error)
                XCTAssertNotNil(data)
                expectation.fulfill()
            })
            weakSelf.waitForExpectations(timeout: 1.0, handler: nil)
        }
    }
    
}
