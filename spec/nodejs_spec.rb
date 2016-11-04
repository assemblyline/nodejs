require 'serverspec'

describe 'Node.js' do
  it 'installs version 7.0.0', :'7.0.0' do
    expect(node_version).to eq '7.0.0'
  end

  it 'installs version 6.9.1', :'6.9.1' do
    expect(node_version).to eq '6.9.1'
  end

  it 'installs version 5.12.0', :'5.12.0' do
    expect(node_version).to eq '5.12.0'
  end

  it 'installs version 4.6.1', :'4.6.1' do
    expect(node_version).to eq '4.6.1'
  end

  it 'installs version 0.12.17', :'0.12.17' do
    expect(node_version).to eq '0.12.17'
  end

  it 'installs npm version 3.10.7' do
    expect(npm_version).to eq '3.10.7'
  end

  def npm_version
    command('npm -v').stdout.chomp
  end

  def node_version
    command('node -v').stdout.chomp[1..-1]
  end
end

