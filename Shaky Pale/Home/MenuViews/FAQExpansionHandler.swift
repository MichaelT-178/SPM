//
//  CloseGroups.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 11/20/22.
//

import SwiftUI

//https://gist.github.com/d4rkd3v1l/0321faf11a877adefea7c96d0b1f67d6
//https://serialcoder.dev/text-tutorials/swiftui/disclosure-group-in-swiftui/
//https://stackoverflow.com/questions/59158476/how-to-have-text-in-shapes-in-swiftui

class ExpansionHandler<T: Equatable>: ObservableObject {
    @Published private (set) var expandedItem: T?
    
    func isExpanded(_ item: T) -> Binding<Bool> {
        return Binding(
            get: { item == self.expandedItem },
            set: { self.expandedItem = $0 == true ? item : nil }
        )
    }

    func toggleExpanded(for item: T) {
        self.expandedItem = self.expandedItem == item ? nil : item
    }
}

enum ExpandableSection: Equatable {
    case section
    case anotherSection
}
