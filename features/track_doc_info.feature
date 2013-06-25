Feature: 
As the owner of the veterinary practice, I have two additional veterinary doctors Bob and Susan. I should be able to track the following information about myself and my fellow veterinary doctors.



Name - must be no longer than 35 characters; value is required
Address
City
State
Zip - should be at most 5 digits
School Received Degree From
Years in Practice - must be value between 1-100

@wip

  Scenario: Show Doctors info
    Given a Doctor
	When I create a doctor's record
	Then Doctor should display