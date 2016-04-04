Given(/^my account has been credited (#{CAPTURE_CASH_AMOUNT}) in my account$/) do |amount|
  my_account.credit(amount)
end

When(/^I withdraw (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
  teller.withdraw_from(@my_account, amount)
end

Then(/^(#{CAPTURE_CASH_AMOUNT}) should be dispensed$/) do |amount|
  cash_slot.contents.should == amount
end

And(/^the balance of my account should be (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
  eventually { my_account.reload.balance.should eq(amount) }
end