require 'spec_helper'

describe Bnsly do
  it 'has a version number' do
    expect(Bnsly::VERSION).not_to be nil
  end

  it 'passes error when guid is not found' do
    response = Bnsly.lookup('testguid')
    expect(response['error']).to eq('That link does not exist')
  end
  
  it 'adds a new url' do
    response = Bnsly.add('http://example.com')
    expect(response['guid']).not_to be_empty
  end
  
  it 'adds a new expiring url' do
    response = Bnsly.add('http://expiring-example.com', 1)
    expect(Date.parse(response['expires_at']).day).to eq(Date.parse(response['createdAt']).day + 1)
    expect(response['guid']).not_to be_empty
  end
  
end
