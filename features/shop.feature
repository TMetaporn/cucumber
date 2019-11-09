
Feature: Keep track of inventory
	As a employee
	I want to keep track of inventory

Background:
	Given a product Cookies with quantity 30 in stock
	Given a product Candy with quantity 50 in stock

Scenario: Customer buy one product
	When customer buy Cookies with quantity 13
	Then Cookies quantity in stock should be 17

Scenario: Customer buy multiple products
	When customer buy Cookies with quantity 3
	And customer buy Candy with quantity 5
	Then Cookies quantity in stock should be 10
	And Candy quantity in stock should be 45

Scenario: Re-order one product
	When I order Cookies with quantity 20
	Then Cookies quantity in stock should be 30

Scenario: Re-order multiple product
	When I order Cookies with quantity 25
	And I order Candy with quantity 20
	Then Bread quantity in stock should be 55
	Then Jam quantity in stock should be 65