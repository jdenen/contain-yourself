require 'rspec'
require 'httpclient'

When("I get a random number") do
  @rand = HTTPClient.get("http://random_number:5000/rand").body.to_i
end

When /^I get a random number with a max of (\d+)$/ do |max|
  @rand = HTTPClient.get("http://random_number:5000/rand/#{max}").body.to_i
end

Then /^it is between (\d+) and (\d+)$/ do |min, max|
  expect(@rand).to be_between(min, max)
end
