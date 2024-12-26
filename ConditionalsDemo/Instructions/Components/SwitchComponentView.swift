//
//  SwitchComponentView.swift
//  ConditionalsDemo
//
//  Created by Jeremy Skrdlant on 12/25/24.
//

import SwiftUI

struct SwitchComponentView: View {
	
	@State var chosenNumber = 1
	let choices = [1,2,3,4,0,100]
    var body: some View {
		VStack {
			Text("Switch Statements")
				.font(.title2)
				.bold()
				.kerning(1.8)
			Text("Choose a different variable to see which case runs.")
				.multilineTextAlignment(.center)
				.foregroundStyle(.gray)
				.offset(y:10)
			
			HStack{
				Text("let")
					.font(.system(size: 22))
					.foregroundStyle(.keywords)
					.offset(y: 10)
				Text("variable")
					.font(.system(size: 22))
					.foregroundStyle(.variables)
					.offset(y: 10)
				Text(" = ")
					.font(.system(size: 22))
					.offset(y: 10)
				Picker("select", selection: $chosenNumber) {
					ForEach(choices, id:\.self){
						Text("\($0)")
							.font(.system(size: 22))
					}
				}
				.pickerStyle(.inline)
				.frame(width: 60, height: 120)
				Spacer()
			}
			
			HStack{
				Text("switch")
					.font(.system(size: 22))
					.foregroundStyle(.keywords)
					
				Text("variable")
					.font(.system(size: 22))
					.foregroundStyle(.variables)
					
				Text("{")
					.font(.system(size: 22))
				Spacer()
			}
			HStack{
				Text("case")
					.font(.system(size: 22))
					.foregroundStyle(.keywords)
				Text("1")
					.font(.system(size: 22))
					.foregroundStyle(.blue)
				Text(":")
				Spacer()
					.font(.system(size: 22))
			
			}.padding(.leading, 20)
			
			HStack{
				Text("// variable was 1")
					.font(.system(size: 22))
					.foregroundStyle(.gray)
				Spacer()
			}.padding(.leading, 40)
				.background(chosenNumber == 1 ? Color.blue.opacity(0.2) : Color.white)
			
			HStack{
				Text("case")
					.font(.system(size: 22))
					.foregroundStyle(.keywords)
				Text("2")
					.font(.system(size: 22))
					.foregroundStyle(.blue)
				Text(":")
					.font(.system(size: 22))
				Spacer()
			}.padding(.leading, 20)
			
			HStack{
				Text("// variable was 2")
					.font(.system(size: 22))
					.foregroundStyle(.gray)
				Spacer()
			}.padding(.leading, 40)
				.background(chosenNumber == 2 ? Color.blue.opacity(0.2) : Color.white)
			HStack{
				Text("case")
					.font(.system(size: 22))
					.foregroundStyle(.keywords)
				Text("3")
					.font(.system(size: 22))
					.foregroundStyle(.blue)
				Text(":")
					.font(.system(size: 22))
				Spacer()
			}.padding(.leading, 20)
			
			HStack{
				Text("// variable was 3")
					.font(.system(size: 22))
					.foregroundStyle(.gray)
				Spacer()
			}.padding(.leading, 40)
				.background(chosenNumber == 3 ? Color.blue.opacity(0.2) : Color.white)
			HStack{
				Text("default")
					.font(.system(size: 22))
					.foregroundStyle(.keywords)
				Text(":")
					.font(.system(size: 22))
				Spacer()
			}.padding(.leading, 20)
			
			HStack{
				Text("// This catches everything that is not caught above.")
					.font(.system(size: 22))
					.foregroundStyle(.gray)
				Spacer()
			}.padding(.leading, 40)
				.background(chosenNumber < 1 || chosenNumber > 3 ? Color.blue.opacity(0.2) : Color.white)
			HStack{
				Text("}")
				Spacer()
			}
			
		}.padding()
			
    }
}

#Preview {
    SwitchComponentView()
}
