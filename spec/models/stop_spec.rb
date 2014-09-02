require 'rails_helper'

describe Stop do
  it { should validate_presence_of :name}
  it { should belong_to :line}
  it { should belong_to :station}
end
