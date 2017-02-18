//
//  ImageDownload.swift
//  ios-xctest-demo
//
//  Created by OkuderaYuki on 2017/02/18.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

/// Modelクラス (非同期処理サンプル)
final class ImageDownload: NSObject {
    func fetchImage(urlString: String,
                    completionHandler: @escaping ((Data?, URLResponse?, Error?) -> Void)) {
        
        guard let url = URL(string: urlString) else { return }
        let request = URLRequest(url: url)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: request, completionHandler: completionHandler)
        task.resume()
    }
}
