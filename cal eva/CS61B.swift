//
//  CS61B.swift
//  cal eva
//
//  Created by shimaila mansoor on 11/22/23.
//

import SwiftUI

struct CS61B: View {
    @State private var showAlert = false

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("CS61B")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .padding(.top, 20)

                overallRatingView
                ratingDistributionView
                reviewsView
            }
            .padding(.horizontal)
            .onAppear {
                            // Trigger the alert when the view appears
                            self.showAlert = true
                        }
                        .alert(isPresented: $showAlert) {
                            // Configure the alert
                            Alert(
                                title: Text("Important Notice"),
                                message: Text("The reviews here are meant to help you pick a course and are not completely representative of the course described, please do complete research before picking a course to add to your schedule"),
                                dismissButton: .default(Text("Got it!"))
                            )
                        }
        }
    }

    var overallRatingView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.2))
                .frame(height: 100)

            Text("8.5/10")
                .font(.title)
                .bold()
                .foregroundColor(Color.green)
        }
        .padding(.horizontal, 20)
    }

    var ratingDistributionView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue.opacity(0.2))
                .frame(height: 160)
            VStack(alignment: .leading, spacing: 10) {
                Text("Rating Distribution")
                    .font(.headline)
                    .foregroundColor(Color.black)
                
                ratingBar(percentage: 70, starCount: 5)
                ratingBar(percentage: 30, starCount: 4)
                ratingBar(percentage: 15, starCount: 3)
                ratingBar(percentage: 4, starCount: 2)
                ratingBar(percentage: 10, starCount: 1)
            }
            .padding(.horizontal, 20)
        }
        .padding(.horizontal, 20)

        
    }

    var reviewsView: some View {
        VStack(alignment: .leading) {
            Text("Reviews")
                .font(.headline)
                .foregroundColor(Color.black)
                .padding(.bottom, 5)

            Text("CS61B was probably the hardest class I have ever taken. Fortunately, Hug was easily accessible outside of class and the homework was minimal. He was also such a character. Project 3 was overly difficult and the class was too theoretical for me. Discussions and lab sections were pointless.")
                .font(.subheadline)
                .padding()
                .background(Color.yellow.opacity(0.3))
                .cornerRadius(10)
            Text("Great lectures and manageable workload. A lot of engaging projects which didn't feel like a chore to complete.")
                .font(.subheadline)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            
            Text("an amazing lecturer and a genuinely great person. exams are tough, but as long as you watch his lectures, stay on top of work, and maximize your time in discussions, you'll do just fine. clobber is pretty decent.")
                .font(.subheadline)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            Text("Awesome lecture. Explain complicated algorithms from simple, intuitive concepts. The project is also pretty good.")
                .font(.subheadline)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            Text("if you arent a cs major, I 100% recommend trying to take this class with any prof besides hellfinger. I know some people won't like this but if you arent a cs person and ie mostly need this class for data science req, TRY TAKING IT AT CC!!! very challenging and fast-paced class. But if you are down to grind 25/7 you'll pass with a decent grade.")
                .font(.subheadline)
                .padding()
                .background(Color.red.opacity(0.3))
                .cornerRadius(10)
            Text("Hilfinger's classes are daunting and theoretical for an introductory CS class but at the same comprehensive and systematic. His lectures are complicated and dry. The projects are excellent and you'll learn a LOT. If you are new to CS would recommend watching other lectures/ reading sources since he assumes you know a lot of stuff and moves fast.").font(.subheadline)
                .padding()
                .background(Color.yellow.opacity(0.3))
                .cornerRadius(10)
            Text("Class was pretty disorganized, way too much content in the time span. Would have preferred if they chilled a bit with the content as there are proects every two weeks, with labs and homework, but I do get data structures is super important. Staff is very nice although!")
                .font(.subheadline)
                .padding()
                .background(Color.red.opacity(0.3))
                .cornerRadius(10)
            Text("The notorious Paul Hilfinger, also known as the Severus Snape of the Computer Science department. I did not take CS61B with him, only CS61A, but I'm sure his Comic Sans text is present in both courses. His slides are quite complicated, and were only useful after learning the material myself. He and Professor Fox made a good team.")
                .font(.subheadline)
                .padding()
                .background(Color.red.opacity(0.3))
                .cornerRadius(10)
            Text("Stop asking me about time constants, don't bring Josh Hug back, or change my grade to an A or don't bring him back, surveyor was ok with class. Don't ever take 61B before 61A. I WAS SCAMMED!!!!!. You can survive but DO NOT expect a good grade.")
                .font(.subheadline)
                .padding()
                .background(Color.yellow.opacity(0.3))
                .cornerRadius(10)
            
        }
        .padding(.horizontal, 20)
    }

    func ratingBar(percentage: Int, starCount: Int) -> some View {
        HStack {
            Text("\(starCount) Star")
                .font(.footnote)
                .frame(width: 60, alignment: .leading)

            GeometryReader { geometry in
                RoundedRectangle(cornerRadius: 5)
                    .fill(percentage > 20 ? Color.green : Color.red)
                    .frame(width: geometry.size.width * CGFloat(percentage) / 100, height: 10)
            }
        }
        .frame(height: 10)
    }
}

extension View {
    func dynamicHorizontalPadding() -> some View {
        self.padding(.horizontal, UIDevice.current.userInterfaceIdiom == .phone ? 10 : 20)
    }
}

// Preview
struct CS61B_Previews: PreviewProvider {
    static var previews: some View {
        CS61B()
    }
}
