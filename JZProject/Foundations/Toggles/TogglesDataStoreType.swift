//
//  TogglesDataStoreType.swift
//  JZProject
//
//  Created by 糖堂 on 2021/4/29.
//

import Foundation

protocol ToggleType {
    
}

protocol TogglesDataStoreType {
    func isToggleOn(_ toggle: ToggleType) -> Bool
    func update(toggle: ToggleType, value: Bool)
}
