//
//  SloopCardView.swift
//  XSloop
//
//  Created by Rene Chamorro on 11/22/21.
//

import SwiftUI

struct SloopCardView: View {
    // mark PROPERTIES
    
    var sloop: Sloop
    
    @State private var isAnimating: Bool = false
    
    // MARK BODY
    

    var body: some View {
        ZStack {
            VStack(spacing: 20){
                //: TOURNAMENT IMAGE
                
                Image(sloop.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 290)
                    . shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                             
                //: TOURNAMENT: TITLE
                
                Text(sloop.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                // TOURNAMENT HEADLINE
                Text(sloop.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //BUTTON START
                StartButtonView()
            } // VSTACK
        } // ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: sloop.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(40)
        .padding(.horizontal, 20)
        
    }
}

    // MARK PREVIEW
struct SloopCardView_Previews: PreviewProvider {
    static var previews: some View {
        SloopCardView(sloop: sloopsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
