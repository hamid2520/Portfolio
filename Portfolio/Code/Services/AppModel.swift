//
//  AppModel.swift
//  Portfolio
//
//  Created by hamid purhasani on 11/26/1400 AP.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio: Portfolio =  Portfolio(name: "Hamid Purhasani", role: "Full-Stack Developer", description: "Hi 👋, I'm Hamid Purhasani . A professional Software Engineer 🚀 having an experience of building Web and Desktop applications / Team leading ",location: "Yazd", skills: [
        Skill(id: UUID().uuidString, skillName: "Python", image: "python"),
        Skill(id: UUID().uuidString, skillName: "Swift", image: "swift"),
        Skill(id: UUID().uuidString, skillName: "C++", image: "cpp"),
        Skill(id: UUID().uuidString, skillName: "Unreal engine", image: "unreal"),
        Skill(id: UUID().uuidString, skillName: "Travis CI", image: "travic"),
        Skill(id: UUID().uuidString, skillName: "Odoo", image: "odoo"),

    ], experiences: [
        Experience(id: UUID().uuidString, companyName: "شرکت مخابرات یزد", role: "Full Stack Developer", duration: "Sep 2018 - Dec 2018"),
        Experience(id: UUID().uuidString, companyName: "فراسازان هنداسه", role: "Backend developer", duration: "Oct 2019 - Present"),
        Experience(id: UUID().uuidString, companyName: "کابل سازان یزد", role: " Full Stack Developer - Freelanser", duration: "Jul 2021 - Dec 2021"),
        Experience(id: UUID().uuidString, companyName: "دانیشو", role: "Backend developer", duration: "Jul 2021 - Dec 2021"),
        Experience(id: UUID().uuidString, companyName: "فاوان" ,role: "Full Stack Developer", duration: "Oct 2021 - Present"),
        Experience(id: UUID().uuidString, companyName: "crownfinancial" ,role: "Python Developer", duration: "Feb 2022 - Present"),

    ]
    )
}
