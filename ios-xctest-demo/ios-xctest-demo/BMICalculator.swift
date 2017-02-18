//
//  BMICalculator.swift
//  ios-xctest-demo
//
//  Created by OkuderaYuki on 2017/02/18.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

/// Modelクラス (同期処理サンプル)
final class BMICalculator: NSObject {
    
    /// BMI計算
    ///
    /// - Parameters:
    ///   - height: 身長(m)
    ///   - weight: 体重(kg)
    /// - Returns: BMI計算結果 (小数点第2位切り捨て)
    static func calculate(height: Float, weight: Float) -> Float {
        let squareOfHeight = height * height
        let bmi = (weight / squareOfHeight) * 10
        return floor(bmi) / 10
    }
}
