//
//  SkillView.swift
//  Portfolio
//
//  Created by hamid purhasani on 11/26/1400 AP.
//

import SwiftUI

struct SkillView: View {
    
    var skill: Skill
    
    var width: CGFloat = 120
    
    var body: some View {
        VStack {
            Image(skill.image)
                .foregroundColor(Color.white)
                .font(.system(size: 17, weight: .semibold))
                .opacity(0.7)
           
            
            Text(skill.skillName)
                .padding(.top, 10)
                .font(.system(size: 17, weight: .semibold))
        }.padding()
            .frame(width: width, height: 109.7)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .opacity(0.075)
            )
        
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skills[0])
    }
}
