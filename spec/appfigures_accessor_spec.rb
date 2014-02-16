require 'spec_helper'

describe AppfiguresAccessor do
  it 'should have a version number' do
    AppfiguresAccessor::VERSION.should_not be_nil
  end
end
