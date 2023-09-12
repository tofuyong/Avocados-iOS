//
//  FactModel.swift
//  Avocados
//
//  Created by Andrea Yong on 12/9/23.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
