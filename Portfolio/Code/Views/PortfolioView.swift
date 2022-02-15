//
//  ContentView.swift
//  Portfolio
//
//  Created by hamid purhasani on 11/26/1400 AP.
//

import SwiftUI

struct PortfolioView: View {
    
    var appModel: AppModel = AppModel()
    
    var body: some View {
        ZStack{
            Color(UIColor.systemBackground).ignoresSafeArea()
             
            ScrollView(.vertical, showsIndicators: false){
                    VStack(alignment: .leading){
                        
                        HeaderView(appModel: appModel)
                        
                        SkillsView(skills: appModel.portfolio.skills, width:  UIScreen.main.bounds.width - 48)
                            .padding(.top, 32)
                        
                        ExperiencesView(experiences: appModel.portfolio.experiences)
                            .padding(.top, 42)
                    }.padding(24)
                
                }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView().colorScheme(.dark)
    }
}
