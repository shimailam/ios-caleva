//
//  EECS16B.swift
//  cal eva
//
//  Created by 商子岳 on 2023/12/2.
//


import SwiftUI

struct EECS16B: View {
    @State private var showAlert = false
    var body: some View {
       
        ScrollView {
            VStack(spacing: 20) {
                Text("EECS16B")
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

            Text("6.5/10")
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
                
                ratingBar(percentage: 40, starCount: 5)
                ratingBar(percentage: 20, starCount: 4)
                ratingBar(percentage: 15, starCount: 3)
                ratingBar(percentage: 15, starCount: 2)
                ratingBar(percentage: 40, starCount: 1)
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

            Text("This class is awful. This class is awful. This class is awful. This class is awful. This class is awful. This class is awful.This class is awful. This class is awful.")
                .font(.footnote)
                .padding()
                .background(Color.red.opacity(0.3))
                .cornerRadius(10)
            Text("Get rid of the labs, the first lab and the lst lab. I rate this clas a 2 out of a 100")
                .font(.footnote)
                .padding()
                .background(Color.red.opacity(0.3))
                .cornerRadius(10)
            Text("He (Ali Niknejad) really seems like he's passionate about the EE content and goes above and beyond in reinforcing the key concepts of his lecture, but he assumes too much prerequisite knowledge and gets lost in the notation, making his goodwill fall flat.")
                .font(.footnote)
                .padding()
                .background(Color.yellow.opacity(0.3))
                .cornerRadius(10)
            Text("He (Ali Niknejad) is truly a great teacher in every sense of the word. His lectures offer a lot of intuition for circuits and will make you enjoy EE. He also cares deeply about his students, going above and beyond to reinforce key concepts for each lecture, even after the circuits part of the course had ended.")
                .font(.footnote)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            Text("For all the hate that 16B gets as a class, Prof. Stojanovic really pulls through on lecturing especially when the material gets tricky. 100% recommend him if you have to take 16B.")
                .font(.footnote)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            Text("He's a really good lecturer. Although he teaches fast paced class, he is willing to answer students' questions in detail and very caring towards students' learning.")
                .font(.footnote)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            Text("Even though the course was a lot more chaotic being online during the pandemic, prof. Ranade really made it a lot easier on us with the staff review sessions before the final, the binshifts, the availability of course staff members for 1-on-1's and check-ins, etc. You can tell she genuinely cares about the students and wants us to do well.")
                .font(.footnote)
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

// Preview
struct EECS16B_Previews: PreviewProvider {
    static var previews: some View {
        EECS16B()
    }
}
