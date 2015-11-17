require 'serverspec'

describe 'Node.js' do
  it 'installs version 5.0.0', :'5.0.0' do
    expect(node_version).to eq '5.0.0'
  end

  it 'installs version 4.2.2', :'4.2.2' do
    expect(node_version).to eq '4.2.2'
  end

  it 'installs version 0.12.7', :'0.12.7' do
    expect(node_version).to eq '0.12.7'
  end

  it 'installs version 0.10.40', :'0.10.40' do
    expect(node_version).to eq '0.10.40'
  end

  def node_version
    command('node -v').stdout.chomp[1..-1]
  end
end

