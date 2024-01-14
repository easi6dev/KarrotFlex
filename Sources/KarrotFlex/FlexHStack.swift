//
//  FlexHStack.swift
//
//  Copyright (c) Danggeun Market, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

import Foundation

import FlexLayout

@discardableResult
public func FlexHStack(_ flex: Flex,
                       spacing: CGFloat = 0,
                       justifyContent: Flex.JustifyContent = .start,
                       alignItems: Flex.AlignItems = .start,
                       _ closure: @escaping (Flex) -> Void) -> Flex {
  flex.addItem()
    .gap(spacing)
    .direction(.row)
    .justifyContent(justifyContent)
    .alignItems(alignItems)
    .define(closure)
}
