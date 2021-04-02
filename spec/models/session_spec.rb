require 'rails_helper'

RSpec.describe Session, type: :model do
  # Association test
  it { should belong_to(:user) }
  it { should have_many(:subjects) }
   # Validation tests
  it { should validate_presence_of(:title) }
end