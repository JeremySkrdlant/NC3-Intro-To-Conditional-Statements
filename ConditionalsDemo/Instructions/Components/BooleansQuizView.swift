//
//  BooleansQuizView.swift
//  ConditionalsDemo
//
//  Created by Jeremy Skrdlant on 12/25/24.
//

import SwiftUI

struct BooleansQuizView: View {
	@State var currentQuestion:BooleanQuizAnswer = questions[0]
	@State var amountCorrect = 0
	@State var amountIncorrect = 0
	
	func getNextQuestion(){
		let index = Int.random(in: 0..<questions.count)
		currentQuestion = questions[index]
	}
    var body: some View {
		VStack {
			Text("Boolean Quiz")
				.font(.title2)
				.bold()
				.kerning(1.8)
			Text("Choose whether the condition results in true or false.")
				.multilineTextAlignment(.center)
				.foregroundStyle(.gray)
				.padding(.bottom, 20)
			HStack{
				Spacer()
				Text("score \(amountCorrect) / \(amountCorrect + amountIncorrect)")
			}.padding(.bottom, 20)
			
			Text(currentQuestion.title)
				.font(.system(size: 35))
				.padding(.bottom, 15)
			
			HStack{
				Spacer()
				Button {
					if currentQuestion.answer {
						amountCorrect += 1
					}else {
						amountIncorrect += 1
					}
					getNextQuestion()
				} label: {
					Text("TRUE")
						.bold()
						.font(.system(size: 20))
						.foregroundStyle(.green)
				}
				Spacer()
				Button {
					if !currentQuestion.answer {
						amountCorrect += 1
					} else {
						amountIncorrect += 1
					}
					getNextQuestion()
				} label: {
					Text("FALSE")
						.bold()
						.font(.system(size: 20))
						.foregroundStyle(.red)
				}
				Spacer()

			}
			
		}.padding()
    }
}

#Preview {
    BooleansQuizView()
}
