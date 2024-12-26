//
//  ContentView.swift
//  ConditionalsDemo
//
//  Created by Jeremy Skrdlant on 12/24/24.
//

import SwiftUI

struct ConditionalsInstructions: View {
    var body: some View {
		ScrollView {
			VStack(spacing:30) {
				// This shows the icon at the top. This image is located in the Assets folder and it has the name NC3
				Image("NC3")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width:300)
					.shadow(radius: 10)
				
				
				// This is our title and description text.
				Text("Welcome to Swift Conditionals")
					.font(.title)
				Text("Click and drag to go through each of the sections.")
					.multilineTextAlignment(.center)
					.foregroundStyle(.gray)
					.padding(.horizontal)
					.offset(y:-15)
				
				// This is the line you see
				Divider()
				BooleansQuizView()
				Divider()
				IfElseView()
				Divider()
				SwitchComponentView()
				Divider()
				Text("Challenge")
					.font(.title2)
					.bold()
					.kerning(1.8)
				
				Text("Scan this with your iPad once the instructor is done")
					.multilineTextAlignment(.center)
					.foregroundStyle(.gray)
					.padding(.horizontal)
				
				// This is our QR Code image also located in the Assets. Note that you can use quotes "" or the dot notation (.) to access elements from your assets folder.
				Image(.conditionsChallenge)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width:350)
					.offset(y:-25)
					.padding(.bottom, 100)
			}
			.padding()
			.onAppear{
				Play()
			}
		}
    }
}

#Preview {
	ConditionalsInstructions()
}
