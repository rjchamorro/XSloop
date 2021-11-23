//
//  OnboardingView.swift
//  XSloop
//
//  Created by Rene Chamorro on 11/22/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK : PROPERTIES
    
    var sloops: [Sloop] = sloopsData
    
    // MARK: BODY
    
    var body: some View {
        TabView {
            ForEach(sloops[0...4]) {item in
                SloopCardView(sloop: item)
                
            } //: Loop
        } //:TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
        
}

//MARK: PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
    
        OnboardingView(sloops: sloopsData)
    }
}
