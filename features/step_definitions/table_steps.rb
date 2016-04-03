Given(/^a board like this:$/) do |table|
  @board = table.raw
end

When(/^player x plays in row (\d+), column (\d+)$/) do |row, col|
end


Then(/^the board should look like this:$/) do |expected_table|
  expected_table.diff!(@board)
end