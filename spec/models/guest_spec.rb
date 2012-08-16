require 'spec_helper'

describe Guest, '#can_edit?' do
  it 'returns false' do
    Guest.new.can_edit?('apartment').should be_false
  end
end

describe Guest, '#can_favorite?' do
  it 'returns true' do
    Guest.new.can_favorite?('apartment').should be_true
  end
end
