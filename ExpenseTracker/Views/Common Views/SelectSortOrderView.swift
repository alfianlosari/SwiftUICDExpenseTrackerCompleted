//
//  SelectSortOrderView.swift
//  ExpenseTracker
//
//  Created by Alfian Losari on 19/04/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//

import SwiftUI

struct SelectSortOrderView: View {
    
    @Binding var sortType: SortType
    @Binding var sortOrder: SortOrder
    
    private let sortTypes = SortType.allCases
    private let sortOrders = SortOrder.allCases
    
    var body: some View {
        HStack {
            Text("Sort by")
            Picker(selection: $sortType, label: Text("Sort by")) {
                ForEach(SortType.allCases) { type in
                    Image(systemName: type == .date ? "calendar" : "dollarsign.circle")
                        .tag(type)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("Order by")
            Picker(selection: $sortOrder, label: Text("Order")) {
                ForEach(sortOrders) { order in
                    Image(systemName: order == .ascending ? "arrow.up" : "arrow.down")
                        .tag(order)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
        .padding(.all)
        .frame(height: 64)
        
    }
}

struct SelectSortOrderView_Previews: PreviewProvider {
    static var previews: some View {
        SelectSortOrderView(sortType: .constant(.amount), sortOrder: .constant(.descending))
    }
}
