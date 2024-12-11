//
//  VisualEffect.swift
//  TESTS
//
//  Created by Marat Fakhrizhanov on 10.12.2024.
//

import SwiftUI

struct VisualEffect: View {
    var body: some View {
      
//        ScrollView(.horizontal, showsIndicators: false) {
//                HStack(spacing: 0) {
//                    ForEach(1..<20) { num in
//                        Text("Number \(num)")
//                            .font(.largeTitle)
//                            .padding()
//                            .background(.red)
//                            .frame(width: 200, height: 200) // Перетаскиваем к представению
//                            .visualEffect { content, proxy in // Используем вместо ридера и так код красивее и меньше/ В замыкание есть контент к чему применяем и его размеры
//                                content
//                                    .rotation3DEffect(.degrees(-proxy.frame(in: .global).minX) / 4, axis: (x: 1, y: 0, z: 0)) // Вставляем тот же самый эффект
//                            } // >> axis - определяет по какой опи мы повернем элемент, дегресс - градус на который повернем
//                    }
//                }
//                .scrollTargetLayout() // применяем к стеку Для того же что и далее написано >>
//            }
//            .scrollTargetBehavior(.viewAligned)
//
        
        Text("some text")
            .frame(width: 100, height: 100)
            .background(.red)
            .onTapGesture {
                print("Tap")
            }
            .frame(width: 200, height: 200)
            .background(.blue)
    }
}

#Preview {
    VisualEffect()
}
