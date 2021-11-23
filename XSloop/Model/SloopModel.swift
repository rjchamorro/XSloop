//
//  SloopModel.swift
//  XSloop
//
//  Created by Rene Chamorro on 11/20/21.
//

import SwiftUI

//MARK - SLOOP DATA MODEL

struct Sloop: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
   
    
  
}
