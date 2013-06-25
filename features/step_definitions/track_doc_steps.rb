Given(/^a Doctor$/) do
 @doctor = Doctor.create!
end

When(/^I create a doctor's record$/) do
  visit(doctors_path)
  click_link "Add Doctor"
  fill_in "Name", :with => "Head Vet"
  fill_in "Address", :with => "PO Box 123"
  fill_in "City", :with => "Austin"
  fill_in "State", :with => "TX"
  fill_in "Zip", :with => "78736"
  fill_in "School", :with => "TAMU"
  select "20", :from => "Years in Practice"
  click_button "Create Doctor"
  
end

Then(/^Doctor should display$/) do
  visit doctors_path
  response.should contain ("Head Vet")
end
