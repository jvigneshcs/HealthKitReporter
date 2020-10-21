//
//  CharacteristicType.swift
//  HealthKitReporter
//
//  Created by Florian on 05.10.20.
//

import Foundation
import HealthKit

public enum CharacteristicType: Int, ObjectType {
    case fitzpatrickSkinType
    case dateOfBirth
    case bloodType
    case biologicalSex

    public var original: HKCharacteristicType? {
        switch self {
        case .fitzpatrickSkinType:
            return  HKObjectType.characteristicType(forIdentifier: .fitzpatrickSkinType)
        case .dateOfBirth:
            return HKObjectType.characteristicType(forIdentifier: .dateOfBirth)
        case .bloodType:
            return HKObjectType.characteristicType(forIdentifier: .bloodType)
        case .biologicalSex:
            return HKObjectType.characteristicType(forIdentifier: .biologicalSex)
        }
    }
}