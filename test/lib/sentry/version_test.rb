require 'test_helper'

describe Sentry::VERSION do
  it 'must contain a version number' do
    Sentry::VERSION.wont_be_nil
  end
end
