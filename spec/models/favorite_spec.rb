require 'spec_helper'

describe Favorite, 'mass assignment' do
  it { should allow_mass_assignment_of(:user_id) }
  it { should allow_mass_assignment_of(:apartment_id) }
end

describe Favorite, 'associations' do
  it { should belong_to(:apartment) }
  it { should belong_to(:user) }
end
