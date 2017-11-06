Given(/I provide an integer of (.*)/) do |int|
  @int_number = int.to_i
end

Then("I will have {int} types of this veg in my belly:") do |int, table|
  vegetables = table.raw
  vegetables.each do |veg|
    expect(veg[0]).to be_kind_of String
  end
end

# Then(/I will have (.*) (.*) in my belly/) do |int, veg|
#   expect(@int_number).to eq int.to_i
#   expect(veg).to eq "cucumbers"
# end

# Given("I provide an floats of {float} and {word}") do |float, word|
#   @float_number = float
#   @word = word
# end
#
# Then("I will have {float} {word} in my belly") do |float, word|
#   expect(@float_number).to eq float
#   expect(@word).to eq word
# end
