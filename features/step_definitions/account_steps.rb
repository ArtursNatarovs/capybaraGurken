Then(/^I am on create account page$/) do
    @pages.account_page.visit
end

When('I fill the first name input field with {string}') do |first_name|
    @pages.account_page.fill_first_name(first_name)
end

When('I fill the last name input field with {string}') do |last_name|
    @pages.account_page.fill_last_name(last_name)
end

When('I fill the email input field with') do
    generated_email = Time.now.strftime('%H%M%S%L') + '@email.co.uk'
    @pages.account_page.fill_email(generated_email)
end

When('I fill the address 1 input field with {string}') do |fill_address_1|
    @pages.account_page.fill_address_1(fill_address_1)
end

When('I fill the city input field with {string}') do |city|
    @pages.account_page.fill_city(city)
end

#I select "United Kingdom" in the country dropdown
Then(/^I select "(Latvia|United Kingdom)" in the country dropdown$/) do |country|
    @pages.account_page.select_country(country)
end

#I select "Greater london" in the region dropdown 
Then(/^I select "(Greater London|Kent)" in the region dropdown$/) do |region|
    @pages.account_page.select_region(region)
end

When('I fill postcode input field with {string}') do |postcode|
    @pages.account_page.enter_postcode(postcode)
end

When('I fill the login name input field with') do
    timeStamp = Time.now.strftime('%H%M%S%L')
    loginName = 'james_bond'+ timeStamp + '007'
    @pages.account_page.fill_login_name(loginName)
end

When('I fill the password input field with {string}') do |password|
    @pages.account_page.fill_password(password)
end

When('I fill the confirm input field with {string}') do |password|
    @pages.account_page.fill_confirm(password)
end

When('I check not ot subscribe') do 
    @pages.account_page.select_subscribe_radio_no
    
end
When('I check privacy checkbox') do 
    @pages.account_page.select_privacy_checkbox
    
end

Then('I click continue') do 
    @pages.account_page.click_continue
    
end



