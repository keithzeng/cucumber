Given(/^I have \$(\d+) in my account$/) do |balance|
  @balance=balance
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |withdraw|
  @withdraw=withdraw
end

Then(/^I should receive \$(\d+) cash$/) do |receive|
  @receive=receive
  expect(receive).to eq(@withdraw)
end

And(/^the balance of the account should be \$(\d+)$/) do |remain|
  expect(remain.to_f).to eq(@balance.to_f-@withdraw.to_f)
end