# Use this hook to configure merit parameters
Merit.setup do |config|
  # Check rules on each request or in background
   config.checks_on_each_request = true

  # Define ORM. Could be :active_record (default) and :mongo_mapper
  config.orm = :active_record
end

# Create application badges (uses https://github.com/norman/ambry)
# Badge.create!({
#   :id => 1,
#   :name => 'just-registered'
# })


Badge.create!({
   :id => 1,
   :name => 'autobiographer'
 })

Badge.create!({
   :id => 2,
   :name => 'statistician'
 })