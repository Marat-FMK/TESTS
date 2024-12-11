//
//  ContentView.swift
//  TESTS
//
//  Created by Marat Fakhrizhanov on 09.12.2024.
//

import SwiftUI

extension VerticalAlignment {
        struct MidAccountAndName: AlignmentID { // Можем сделать или структурой или перечислением
            static func defaultValue(in context: ViewDimensions) -> CGFloat {
                context[.top] // выравниевание по центру того к чему приписываем модификатор
            }
        }
        
        static let midAccountAndName = VerticalAlignment(MidAccountAndName.self) // Вертикально по центру
    }

struct ContentView: View {
    var body: some View {
        
        
        
                                                                    
        HStack(alignment: .midAccountAndName) {
                VStack {
                    Text("@twostraws")
                        .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] } // Эта строка будет выравнена в один уровень со второй >>
                    Image(systemName: "xmark") // Картинку не трогаем она будет чуть ниже в представлении так как это все в HStack
                        .resizable()
                        .frame(width: 64, height: 64)
                }
                
                VStack {
                    Text("Full name:") // Эту строку не трогаем она будет чуть выше в представлении
                    Text("PAUL HUDSON")
                        .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] } // << Вторая строка которая выравнена с первой
                        .font(.largeTitle)
                    Text("retro")
                }
            }
        
        
        
    }
}

#Preview {
    ContentView()
}
