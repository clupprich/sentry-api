require 'test_helper'

describe Sentry::Api, '#login' do
  let(:sentry) { Sentry::Api.new('http://app.getsentry.com') }

  it 'returns true upon successful login' do
    VCR.use_cassette('login') do
      sentry.login('christoph@luppri.ch', '!!sentry-api').must_equal true
    end
  end

  it 'returns false when wrong credentials' do
    VCR.use_cassette('login-unsuccessful') do
      sentry.login('christoph@luppri.ch', 'sentry-api').must_equal false
    end
  end
end

describe Sentry::Api, '#status' do
  let(:sentry) { Sentry::Api.new('http://app.getsentry.com') }

  before(:each) do
    VCR.use_cassette('login') do
      sentry.login('christoph@luppri.ch', '!!sentry-api')
    end
  end

  subject do
    VCR.use_cassette('status') do
      sentry.status('sentry-api')
    end
  end

  it 'returns an array' do
    subject.must_be_instance_of Array
  end

  it 'has two items' do
    subject.count.must_equal 2
  end
end
