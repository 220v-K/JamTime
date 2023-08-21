//
//  MainView.swift
//  Sonoma
//
//  Created by 이재원 on 2023/08/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Spacer().frame(width:44, height: 44)
            }
            
            HStack {
                Text("Jam List").font(.Tasa.bold.size(size: 34))
                    .padding(.leading, 16)
                Spacer()
            }
            
            Divider().padding(.top, 5).padding(.bottom, 31)
            
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "plus").font(.system(size: 30))
                        .foregroundColor(.middleGray)
                    Spacer()
                }.padding(.bottom, 9)
                Text("Add Jam").font(.system(size: 16, weight: .medium))
                    .foregroundColor(.middleGray)
            }.padding(.top, 27).padding(.bottom, 15)
            .background(
                Rectangle()
                  .foregroundColor(.clear)
                  .background(Color.lightGray)
                  .cornerRadius(23)
            ).padding(.horizontal, 16)
            
            Spacer()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
