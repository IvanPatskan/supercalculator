Feature: Calculator
  As a user
  I want to use a calculator to calculate two numbers 

Scenario Outline: Сalculating of two numbers <num1> & <num2>
    Given I have a calculator
    When I enter <num1> and <num2> and choose <math> and press button
    Then the result should be <total>

  Examples:
    | num1 | num2 | total | math |
    | 5 | 6 | 11 | + |
    | 50 | 25 | 75 | + |
    | 5 | -5 | 0 | + |
    | -3 | -4 | -7 | + |
    | 10 | 3 | 7 | - |
    | 5 | -5 | 10 | - |
    | 2 | 5 | -3 | - |
    | -2 | -3 | -5 | - |
    | -4 | 3 | -7 | - |
    | 4 | 5 | 20 | * |
    | 5 | -5 | -25 | * |
    | 2 | 0 | 0 | * |
    | -4 | -3 | 12 | * |
    | 18 | 6 | 3 | / |
    | -24 | -6 | 4 | / |
    | -42 | 7 | -6 | / |
    | 25 | 10 | 5 | % |
    | -25 | 10 | -5 | % |
    | 27 | 9 | 0 | % |
    | 5 |  | NaN | + |
    |  |  | NaN | + |    
    | text | 7 | NaN | + |
    | text | text | NaN | + |