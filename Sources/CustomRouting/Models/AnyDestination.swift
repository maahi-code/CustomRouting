//
//  AnyDestination.swift
//  Architecture
//
//  Created by Mahipal Singh on 10/09/26.
//

@preconcurrency import SwiftUI

public struct AnyDestination: Hashable, Sendable {
    let id = UUID().uuidString
    var destination: AnyView
    public init<T: View> (destination: T) {
        self.destination = AnyView(destination)
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    public static func == (lhs: AnyDestination, rhs: AnyDestination) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
}
