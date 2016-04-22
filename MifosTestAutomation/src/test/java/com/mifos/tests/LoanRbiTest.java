package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/LoanRBI/cucumber-html-report",
		"json-pretty:target/LoanRBI/cucumber-json-report.json" },
		features = { "src/test/resources/features/chaitanya.feature" },
		tags = {"@Scenario3-CHAITANYA-Undodisbursal-TR2"},
		glue = { "com.mifos.steps" })

public class LoanRbiTest {

}





