//
//  CircleBottonAnimationView.swift
//  SwiftfulCrypto
//
//  Created by Samsul Hadi on 01/08/21.
//

import SwiftUI

struct CircleBottonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none)
    }
}

struct CircleBottonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleBottonAnimationView(animate: .constant(false))
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
    }
}
