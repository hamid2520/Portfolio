//
//  HeaderView.swift
//  Portfolio
//
//  Created by hamid purhasani on 11/26/1400 AP.
//

import SwiftUI

struct HeaderView: View {
    
    var appModel: AppModel
    
    
    var body: some View {
        VStack {
            Image("self2")
                .resizable()
                .foregroundColor(Color(hue: 0.547, saturation: 0.951, brightness: 0.776))
                .frame(width: 100, height: 110)
                .padding(5)
                .background(
                    Circle()
                        .opacity(0.7)
                        .shadow(radius: 5)
                        .foregroundColor(Color(red: 0.028, green: 0.572, blue: 0.803))
                )
            
            Text(appModel.portfolio.name)
                .padding(.top, 8)
                .font(.system(size: 17, weight: .semibold))
            
            Text(appModel.portfolio.role)
                .padding(.top, -2)
                .font(.system(size: 18, weight: .light))
            
            HStack{
                Image(systemName: "location.fill")
                    .font(.system(size: 10, weight: .semibold))
                
                Text(appModel.portfolio.location)
                    .padding(.top, -2)
                    .font(.system(size: 17, weight: .light))
            }
            .padding(.top, 14)
            .opacity(0.45)
            
            Text(appModel.portfolio.description)
                .padding(.top, 24)
                .font(.system(size: 16, weight: .light))
                .opacity(0.7)
                .lineSpacing(12)
            
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
    }
}
