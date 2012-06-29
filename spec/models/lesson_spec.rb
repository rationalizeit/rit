require 'spec_helper'

describe Lesson do
  before do
    @valid_attributes = {
      :name => 'Lesson1', 
      :course_id => 1,
      :course_day => 2
    }
    @required_attributes =  [:name, :course_id, :course_day]
  end
  context "Relationships" do
    it { should belong_to(:course) }
  end
  context "Validations" do
    [:name, :course_id, :course_day].each do |attribute|
      it "should perform validations on #{attribute}" do
        Lesson.new(@valid_attributes).should be_valid
        Lesson.new(@valid_attributes.except(attribute)).should_not be_valid
      end
    end
    it "should save correctly" do
      Lesson.make(@valid_attributes)
    end
  end
end
