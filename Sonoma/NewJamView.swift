//
//  NewJamView.swift
//  Sonoma
//
//  Created by 이재원 on 2023/08/22.
//

import SwiftUI

struct NewJamView: View {
    @State var jamNameText: String = ""
    @State var locationText: String = ""
    
    let screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Spacer().frame(width:44, height: 44)
            }
            
            HStack {
                Text("New Jam").font(.Tasa.bold.size(size: 34))
                    .padding(.leading, 16)
                Spacer()
            }
            
            Divider().padding(.top, 5).padding(.bottom, 24)
            
            VStack {
                TextField("New Jam", text: $jamNameText)
                    .font(.system(size: 20, weight: .medium))
                    .padding(.vertical, 10).padding(.horizontal, 24)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.lightGray)
                    )
                
                TextField("Add Location", text: $locationText)
                    .font(.system(size: 14, weight: .medium))
                    .padding(.vertical, 10).padding(.horizontal, 24)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.lightGray)
                    )
                
                HStack(spacing: 4) {
                    dayButton(day: "S")
                    dayButton(day: "M")
                    dayButton(day: "T")
                    dayButton(day: "W")
                    dayButton(day: "T")
                    dayButton(day: "F")
                    dayButton(day: "S")
                }
                
                HStack(spacing: 15) {
                    timeButton(time: "Morning")
                    timeButton(time: "Afternoon")
                }.padding(.top, 50)
                
            }.padding(.horizontal, 38)
            
            Spacer()
        }
    }
    
    private func dayButton(day: String) -> some View {
        let size: CGFloat = (screenWidth - 38*2 - 4*6) / 7
        
        return Button {
            //
        } label: {
            Text("\(day)").font(.Tasa.regular.size(size: 18))
                .foregroundColor(.black)
                .frame(width: size, height: size)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.lightGray)
                )
        }
    }
    
    private func timeButton(time: String) -> some View {
        let width: CGFloat = (screenWidth - 38*2 - 15) / 2
        
        return Button {
            //
        } label: {
            Text("\(time)").font(.Tasa.regular.size(size: 18))
                .foregroundColor(.black)
                .frame(width: width, height: 45)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.lightGray)
                )
        }
    }
}

struct NewJamView_Previews: PreviewProvider {
    static var previews: some View {
        NewJamView()
    }
}
