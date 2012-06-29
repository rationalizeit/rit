require 'spec_helper'

describe Registration do
  context "Relationships" do
    it { should belong_to(:user) }
    it { should belong_to(:course) }
  end
end
