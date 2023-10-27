//
//  CircleGroupView.swift
//  Restart-App
//
//  Created by FFK on 20.10.2023.
//

import SwiftUI

struct CircleGroupView: View {
    
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    @State private var isAnimatig: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity),lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
        .blur(radius: isAnimatig ? 0 : 10)
        .opacity(isAnimatig ? 1 : 0 )
        .scaleEffect(isAnimatig ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimatig)
        .onAppear(perform: {
            isAnimatig = true
        })
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
