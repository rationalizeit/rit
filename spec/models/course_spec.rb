
require 'spec_helper'
describe Course do
  
  before do
    @valid_attributes = {
      :name => "Course1", 
      :price => 549
    }
    @required_attributes = [:name, :price]
  end
  context "Relationships" do
    it { should have_many (:registrations) }
    it { should have_many(:users).through(:registrations) }
    it { should have_many (:lessons) }
  end
  
  context "Validations" do
   
    it "should save correctly" do
     lambda { Course.create(@valid_attributes)}.should change(Course, :count).by(1)
    end 
   
      it "should validate presence of required attributes" do
        @required_attributes.each do |attribute|
          Course.new(@valid_attributes.except(attribute)).should_not be_valid
        end
    end
  end
end


