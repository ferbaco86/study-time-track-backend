require 'rails_helper'

RSpec.describe Subject, type: :model do
  # Association test
  it { should belong_to(:session) }
   # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:time) }
end