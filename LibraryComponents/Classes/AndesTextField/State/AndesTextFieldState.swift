//
//  AndesTextFieldState.swift
//  AndesUI
//
//  Created by Martin Damico on 11/03/2020.
//

import Foundation

/// Used to define the colors of an AndesTextField
@objc public enum AndesTextFieldState: Int, AndesEnumStringConvertible {
    case idle
    case error
    case disabled
    case readOnly

    static func keyFor(_ value: AndesTextFieldState) -> String {
        switch value {
        case .idle:
            return "IDLE"
        case .error:
            return "ERROR"
        case .readOnly:
            return "READ_ONLY"
        case .disabled:
            return "DISABLED"
        }
    }

}
