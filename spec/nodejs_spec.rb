require 'serverspec'

describe 'Node.js' do
  it 'installs version 8.0.0', :'8.0.0' do
    expect(node_version).to eq '8.0.0'
  end

  it 'installs version 6.11.0', :'6.11.0' do
    expect(node_version).to eq '6.11.0'
  end

  it 'installs version 0.12.18', :'0.12.18' do
    expect(node_version).to eq '0.12.18'
  end

  it 'installs npm version 5.0.3', :'6.11.0' do
    expect(npm_version).to eq '5.0.3'
  end

  it 'installs npm version 5.0.3', :'8.0.0' do
    expect(npm_version).to eq '5.0.3'
  end

  it 'installs npm version 3.10.9', :'0.12.18' do
    expect(npm_version).to eq '3.10.9'
  end

  def npm_version
    command('npm -v').stdout.chomp
  end

  def node_version
    command('node -v').stdout.chomp[1..-1]
  end
end

