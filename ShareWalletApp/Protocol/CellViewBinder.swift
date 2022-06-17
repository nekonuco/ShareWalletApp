//
//  CellViewBinder.swift
//  ShareWalletApp
//
//  Created by 野辺翔太 on 2022/06/18.
//

import Foundation
import UIKit

public protocol CellViewBinder {
    associatedtype ContentView: UIView
    static func contentView() -> ContentView
    static var identifier: String { get }
}

extension CellViewBinder {
    static var identifier: String {
        return String(describing: self)
    }
}
