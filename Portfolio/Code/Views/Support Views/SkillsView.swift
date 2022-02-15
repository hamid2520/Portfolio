//
//  SkillsView.swift
//  Portfolio
//
//  Created by hamid purhasani on 11/26/1400 AP.
//

import SwiftUI

struct SkillsView: View {
    
    var skills: [Skill]
    var width: CGFloat
    
    @State var showSkills = true
    
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                Text("Skills")
                    .opacity(0.9)
                    .font(.system(size: 21, weight: .semibold))
                
                Button{
                    withAnimation(.easeInOut(duration: 0.35)){
                        showSkills.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 17, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }
        }
        if(showSkills) {
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 12){
                ForEach(skills){ skill in SkillView(skill: skill, width: width / 3 - 15)
                    
                }
            }.padding(.top, 24)
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            SkillsView(skills: AppModel().portfolio.skills, width: 400).padding(24)
        }
    }
}
