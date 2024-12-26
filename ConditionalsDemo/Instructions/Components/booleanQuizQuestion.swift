//
//  booleanQuizQuestion.swift
//  ConditionalsDemo
//
//  Created by Jeremy Skrdlant on 12/25/24.
//

struct BooleanQuizAnswer: Hashable{
	var title:String
	var answer:Bool
}

let questions = [
	BooleanQuizAnswer(title: "5 == 5", answer: true),
	BooleanQuizAnswer(title: "7 > 10", answer: false),
	BooleanQuizAnswer(title: "3 < 8", answer: true),
	BooleanQuizAnswer(title: "24 < 24", answer: false),
	BooleanQuizAnswer(title: "85 <= 85", answer: true),
	BooleanQuizAnswer(title: "\"hi\" != \"Hi\"", answer: true),
	BooleanQuizAnswer(title: "\"Swift\" == \"SWIFT\"", answer: false),
	BooleanQuizAnswer(title: "8 >= 8", answer: true),
	BooleanQuizAnswer(title: "5 != 2", answer: true),
	BooleanQuizAnswer(title: "12 > 10", answer: true),
	BooleanQuizAnswer(title: "1 > 3", answer: false),
	BooleanQuizAnswer(title: "\"code\" == \"code\"", answer: true),
	BooleanQuizAnswer(title: "3.55 < 3.49", answer: false),
	BooleanQuizAnswer(title: "true != false", answer: true),
	BooleanQuizAnswer(title: "!false", answer: true),
	BooleanQuizAnswer(title: "!true", answer: false),
	BooleanQuizAnswer(title: "false == false", answer: true)
]
