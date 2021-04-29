//
//  InternalTogglesDataStore.swift
//  JZProject
//
//  Created by 糖堂 on 2021/4/29.
//

import Foundation

enum InternalToggle: String, ToggleType {
    case isLikeButtonForMomentEnable
    case isSwiftUIEnable
}

struct InternalTogglesDataStore: TogglesDataStoreType {
    private let userDefaults: UserDefaults
    private init(userDefaults: UserDefaults) {
        self.userDefaults = userDefaults
        self.userDefaults.register(defaults: [
            InternalToggle.isLikeButtonForMomentEnable.rawValue : false,
            InternalToggle.isSwiftUIEnable.rawValue : false
        ])
    }
    
    static let shared: InternalTogglesDataStore = .init(userDefaults: .standard)
    
    func isToggleOn(_ toggle: ToggleType) -> Bool {
        guard let toggle = toggle as? InternalToggle else {
            return false
        }
        return userDefaults.bool(forKey: toggle.rawValue)
    }
    
    func update(toggle: ToggleType, value: Bool) {
        guard let toggle = toggle as? InternalToggle else {
            return
        }
        userDefaults.setValue(value, forKey: toggle.rawValue)
        
    }
}

