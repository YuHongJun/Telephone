//
//  Product.swift
//  Telephone
//
//  Copyright (c) 2008-2016 Alexey Kuznetsov
//  Copyright (c) 2016 64 Characters
//
//  Telephone is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Telephone is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//

import Foundation

public struct Product {
    public let identifier: String
    public let name: String
    public let price: NSDecimalNumber
    public let localizedPrice: String

    public init(identifier: String, name: String, price: NSDecimalNumber, localizedPrice: String) {
        self.identifier = identifier
        self.name = name
        self.price = price
        self.localizedPrice = localizedPrice
    }
}

extension Product: Hashable {
    public var hashValue: Int {
        return identifier.hashValue ^ name.hashValue ^ price.hashValue ^ localizedPrice.hashValue
    }
}

public func ==(lhs: Product, rhs: Product) -> Bool {
    return lhs.identifier == rhs.identifier &&
        lhs.name == rhs.name &&
        lhs.price == rhs.price &&
        lhs.localizedPrice == rhs.localizedPrice
}
