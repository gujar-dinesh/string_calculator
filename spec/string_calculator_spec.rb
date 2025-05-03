require './string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns 0 for an empty string" do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end
    it "returns the number itself when only one number is passed" do
        calculator = StringCalculator.new
        expect(calculator.add("5")).to eq(5)
    end
    it "returns sum of two comma_separated numbers" do
        calculator = StringCalculator.new
        expect(calculator.add("1,2")).to eq(3)
     end 
     it "returns sum of two new_line_separated numbers" do
        calculator = StringCalculator.new
        expect(calculator.add("1\n2")).to eq(3)
     end 
     it "returns sum of two comma_separated and new_line_seperated numbers" do
        calculator = StringCalculator.new
        expect(calculator.add("1,2\n3")).to eq(6)
     end  
     it "returns sum of two new_line_sepearated numbers" do
        calculator = StringCalculator.new
        expect(calculator.add("1\n2\n3")).to eq(6)
     end 

  end
end
