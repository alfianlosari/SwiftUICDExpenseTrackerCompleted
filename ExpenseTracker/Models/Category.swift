//
//  Category.swift
//  ExpenseTracker
//
//  Created by Alfian Losari on 19/04/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable {
    
    case donation
    case food
    case entertainment
    case health
    case shopping
    case transportation
    case utilities
    case other
    
    var systemNameIcon: String {
        switch self {
        case .donation: return "heart.circle.fill"
        case .food: return "archivebox"
        case .entertainment: return "tv.music.note"
        case .health: return "staroflife"
        case .shopping: return "cart"
        case .transportation: return "car"
        case .utilities: return "bolt"
        case .other: return "tag"
        }
    }
    
    var color: Color {
        switch self {
        case .donation: return Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        case .food: return Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
        case .entertainment: return Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1))
        case .health: return Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        case .shopping: return Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        case .transportation: return Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        case .utilities: return Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        case .other: return Color(#colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1))
        }
    }
}

extension Category: Identifiable {
    var id: String { rawValue }
}
