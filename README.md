# XCTest Framework

## 概要
XCTestは、Xcodeプロジェクトのユニットテスト、パフォーマンステスト、UIテストを作成して実行するためのフレームワークです。

## クラス
[XCTest Class](https://github.com/stv-yokudera/ios-xctest-demo#xctest)<br>
[XCTestCase Class](https://github.com/stv-yokudera/ios-xctest-demo#xctestcase)

## 参考
https://developer.apple.com/reference/xctest

# XCTest

## 概要
XCTestは、XCTestCaseおよびXCTestSuiteの基本クラスです。<br>テストの作成、管理、および実行のための共通の機能を定義します。<br>基本的にプロジェクトでテストを定義するときは、XCTestCaseを直接サブクラス化して利用します。

## 関連クラス
XCTestCase、XCTestSuite

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|:-----------:|:------------:|:------------:|
| setUp() | クラス内の各テストメソッドの呼び出しの前に呼び出される | `override func setUp() {super.setUp()}` |
| tearDown() | クラス内の各テストメソッドの呼び出し後に呼び出される | `override func tearDown() {super.tearDown()}` |

## フレームワーク
XCTest.framework

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/xctest/xctest

# XCTestCase

## 概要
XCTestCaseは、カスタムテストを定義するためのXCTestのサブクラスです。

テストメソッドは、
- 引数・返り値がない
- メソッド名が`test`から始まる
必要があります。`XCTest`フレームワークによって自動的に検知されます。

## 関連クラス
XCTest、XCTestSuite

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|:-----------:|:------------:|:------------:|
| setUp() | クラス内の各テストメソッドの呼び出しの前に呼び出される | `override func setUp() {super.setUp()}` |
| tearDown() | クラス内の各テストメソッドの呼び出し後に呼び出される | `override func tearDown() {super.tearDown()}` |
| expectation(description:) | 期待値を作成する。非同期処理のテストの際に使用する | `self.expectation(description: "FetchImage")` |
| waitForExpectations(timeout:handler:) | すべての期待値が満たされるか、タイムアウトに達するまでイベントを処理しながら実行ループを実行する | `self.waitForExpectations(timeout: 1.0, handler: nil)` |
| measure(_:) | テストメソッドの内部で呼び出し、引数のブロックが使うリソースを計測する | `measure { [weak self] () in print("do something")}` |

## フレームワーク
XCTest.framework

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/xctest/xctestcase
