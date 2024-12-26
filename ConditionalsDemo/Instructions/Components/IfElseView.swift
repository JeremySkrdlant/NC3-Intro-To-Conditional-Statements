//
//  IfElseView.swift
//  ConditionalsDemo
//
//  Created by Jeremy Skrdlant on 12/25/24.
//

import SwiftUI

struct IfElseView: View {
	@State var currentCondition:BooleanQuizAnswer = questions[0]
	
    var body: some View {
		VStack {
			Text("If-Else Statements")
				.font(.title2)
				.bold()
				.kerning(1.8)
			Text("Choose different conditions to see which route the code goes.")
				.multilineTextAlignment(.center)
				.foregroundStyle(.gray)
				.offset(y:10)
			HStack{
					Text("if")
					.font(.system(size: 22))
					.foregroundStyle(.keywords)
					.offset(y: 10)
				Picker("select", selection: $currentCondition) {
					ForEach(questions, id:\.self){
						Text($0.title)
							.font(.system(size: 22))
					}
				}
				.pickerStyle(.inline)
				.frame(width: 240, height: 120)
				
				Text("{")
					.font(.system(size: 22))
					.offset(y: 10)
				Spacer()
			}
			HStack{
				Text("// This code runs when it is true")
					.font(.system(size: 22))
					.foregroundStyle(.gray)
				Spacer()
			}
			.padding(.leading, 25)
			.background(currentCondition.answer ? Color.blue.opacity(0.2) : Color.white)
			.offset(y: -10)
				
			
			HStack{
				Text("}")
					.font(.system(size: 22))
				Text("else")
					.font(.system(size: 22))
					.foregroundStyle(.keywords)
				Text("{")
					.font(.system(size: 22))
				Spacer()
			}
			HStack{
				Text("// This code runs when it is false")
					.font(.system(size: 22))
					.foregroundStyle(.gray)
				Spacer()
			}
			.padding(.leading, 25)
			.background(!currentCondition.answer ? Color.blue.opacity(0.2) : Color.white)
	
			HStack{
				Text("}")
					.font(.system(size: 22))
				Spacer()
			}
		}.padding()
    }
}

#Preview {
    IfElseView()
}
