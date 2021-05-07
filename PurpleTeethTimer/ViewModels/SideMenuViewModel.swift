//
//  SideMenuViewModel.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 5/4/21.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case home
    case tips
    case charity
    case calendar
    case settings
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .tips: return "Tips"
        case .charity: return "Charity"
        case .calendar: return "Calendar"
        case .settings: return "Settings"
        }
    }
    
    var image: String {
        switch self {
        case .home: return "house"
        case .tips: return "info.circle"
        case .charity: return "dollarsign.circle"
        case .calendar: return "calendar"
        case .settings: return "gear"
        }
    }
}
