//
//  CS61A.swift
//  cal eva
//
//  Created by 商子岳 on 2023/12/2.
//
import SwiftUI

struct CS61A: View {
    @State private var showAlert = true
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("CS61A")
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

            Text("8.8/10")
                .font(.title)
                .bold()
                .foregroundColor(Color.green)
        }
        .padding(.horizontal, 20)
    }

    var ratingDistributionView: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue.opacity(0.2))
                .frame(height: 160)
            VStack(alignment: .leading, spacing: 10) {
                Text("Rating Distribution")
                    .font(.headline)
                    .foregroundColor(Color.black)
                
                ratingBar(percentage: 60, starCount: 5)
                ratingBar(percentage: 30, starCount: 4)
                ratingBar(percentage: 15, starCount: 3)
                ratingBar(percentage: 10, starCount: 2)
                ratingBar(percentage: 20, starCount: 1)
            }
            .padding(.horizontal, 20) } .padding(.horizontal, 20)
        
    }
        
    

    var reviewsView: some View {
        VStack(alignment: .leading) {
            Text("Reviews")
                .font(.headline)
                .foregroundColor(Color.black)
                .padding(.bottom, 5)

            Text("DeNero is an epic professor. He rides an electric unicycle, does OH w/ his dog, and is insanely skilled in Python/Scheme/SQL. He preps 30 min of content for 1hr lecture blocks intending to be stopped by questions that really help understanding. Test questions are hard but doing old exams to pattern match is very helpful.")
                .font(.subheadline)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            Text("Very hard class. But Daddy Denero's lectures are super engaging and fun, and there are a ton of resources available to help you succeed. Although challenging, CS61A is a phenomenal experience because of the staff and Denero.")
                .font(.subheadline)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            Text("Honestly didn't like him (J Denero) and found his lectures super confusing and his voice very annoying. As someone completely new to programming I was lost the entire semester.").font(.subheadline)
                .padding()
                .background(Color.red.opacity(0.3))
                .cornerRadius(10)
            Text("CS61a is the best class I have ever taken. DeNero is an amazing professor that does the most for his students. This class is pretty difficult, but it teaches you SO much and your grade reflects your knowledge fairly well")
                .font(.subheadline)
                    .padding()
                    .background(Color.green.opacity(0.3))
                    .cornerRadius(10)
            Text("Aaaaaaaaaanouncements! Professor DeNero was an amazing professor who helped fan my passion for programming.") .font(.subheadline)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            Text("Very well spoken staff who are very eager to support students, but practice work just felt lazy. Honestly just stopped going after I got enough points for a B; dreadfully boring practice for actually very interesting content so I just lost interest.")
                .font(.subheadline)
                    .padding()
                    .background(Color.yellow.opacity(0.3))
                    .cornerRadius(10)
            Text("Such an amazing lecturer (J Denero). Spongebobesque voice actually makes lectures interesting to listen to (even listening to him reading off slides is fun). Gives excellent and concise answers to questions. The course itself was very well designed in my opinion. Easy to get a perfect score on non-exam stuff and exams are kind of fun, like brain teasers.").font(.subheadline)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
            Text("He's (J Denero) okay at teaching. There are some topics that he could definitely explain way better. He was pretty condescending at office hours too. He got super mad whenever you asked for help on more than 1 problem/concept, saying it's better to ask another staff for help.")
                .font(.subheadline)
                    .padding()
                    .background(Color.red.opacity(0.3))
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
struct CS61A_Previews: PreviewProvider {
    static var previews: some View {
        CS61A()
    }
}
