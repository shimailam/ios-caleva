//
//  CUBSTART.swift
//  cal eva
//
//  Created by Jo  on 12/3/23.
//

import SwiftUI

struct CUBSTART: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("CUBSTART")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .padding(.top, 20)

                overallRatingView
                ratingDistributionView
                reviewsView
            }
            .padding(.horizontal)
        }
    }

    var overallRatingView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.2))
                .frame(height: 100)

            Text("10/10")
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
                
                ratingBar(percentage: 100, starCount: 5)
                ratingBar(percentage: 0, starCount: 4)
                ratingBar(percentage: 0, starCount: 3)
                ratingBar(percentage: 0, starCount: 2)
                ratingBar(percentage: 0, starCount: 1)
            }
            .padding(.horizontal, 20) } .padding(.horizontal, 20) }
    

    var reviewsView: some View {
        
        VStack(alignment: .leading) {
            Text("Reviews")
                .font(.headline)
                .foregroundColor(Color.black)
                .padding(.bottom, 5)

            Text("Cubstart is an app development course for beginner to intermediate developers. It was a time when I learned a lot at Cubstart and was inspired by a lot of passion and effort from teachers at the same time. - Jo")
                .font(.footnote)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            Text("As someone completely new to iOS development but someone who's had apple products for a large amount of my life learning how to create apps has been so cool!! Big thank you to Andy and Justin for being solid teachers and really kind to requests and extensions! Loved the course and recommended it to friends - shimaila")
                .font(.footnote)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            Text("I'm so mad this class isn't a year long")
                .font(.footnote)
                .padding()
                .background(Color.red.opacity(0.3))
                .cornerRadius(10)
            Text("I enjoyed the class and learned a lot")
                .font(.footnote)
                .padding()
                .background(Color.green.opacity(0.3))
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
struct CUBSTART_Previews: PreviewProvider {
    static var previews: some View {
        CUBSTART()
    }
}
