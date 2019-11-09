Feature: Deposit money into account

Background:
	Given Amount of money in account is 1200 Baht

Scenario: Deposit money
	When I deposit 500 Baht into my account
	Then Amount of money in my account should be 700 Baht