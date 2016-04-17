# Before do
#   puts "*************"
# end

# After do
#   puts "============="
# end

# Before('@admin') do
#   user = create_user(:admin => true)
#   login_as user
# end

# Before do |scenario|
#   puts "Starting scenario #{scenario.name}"
# end

# After do |scenario|
#   puts "Oh dear" if scenario.failed?
# end

# Around do |scenario, block|
#   puts "About to run #{scenario.name}"
#   block.call
#   puts "Finished running #{scenario.name}"
# end

require_relative "../../lib/balance_store"
require_relative "../../lib/transaction_queue"

# Before do
#   TransactionQueue.clear
# end