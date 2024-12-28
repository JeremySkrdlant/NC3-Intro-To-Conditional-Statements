//
//  ConditionalsDemoTests.swift
//  ConditionalsDemoTests
//
//  Created by Jeremy Skrdlant on 12/24/24.
//

import Testing
@testable import ConditionalsDemo

struct ConditionalsDemoTests {

	func getStateOfH2O(temperatureF: Double)->String {
		// Put your code here and replace this return with your returns of either ice, water, or gas.
		return "TODO: Get this to work"
	}
	
	@Test func testGetStateOfH2O() async throws {
		#expect(getStateOfH2O(temperatureF: 0) == "ice")
		#expect(getStateOfH2O(temperatureF: 32) == "ice")
		#expect(getStateOfH2O(temperatureF: 40) == "water")
		#expect(getStateOfH2O(temperatureF: 100) == "water")
		#expect(getStateOfH2O(temperatureF: 200) == "water")
		#expect(getStateOfH2O(temperatureF: 212) == "gas")
		#expect(getStateOfH2O(temperatureF: 220) == "gas")
	}


}
