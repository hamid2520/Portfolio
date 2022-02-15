//
//  ExperiencesView.swift
//  Portfolio
//
//  Created by hamid purhasani on 11/26/1400 AP.
//

import SwiftUI

struct ExperiencesView: View {
    
    var experiences: [Experience]
    
    @State var showExperiences = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack(spacing: 16) {
                Text("Experiences")
                    .opacity(0.9)
                    .font(.system(size: 21, weight: .semibold))
                
                Button{
                    withAnimation(.easeInOut(duration: 0.35)){
                        showExperiences.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 17, weight: .medium))
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }
        }
        if(showExperiences) {
            ForEach(experiences){ experience in ExperienceView(experience: experience)
                
            }
        }
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ExperiencesView(experiences: AppModel().portfolio.experiences)
                .padding(24)
        }
    }
}
