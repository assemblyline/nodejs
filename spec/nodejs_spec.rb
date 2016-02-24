require 'serverspec'

describe 'Node.js' do
  it 'installs version 5.7.0', :'5.7.0' do
    expect(node_version).to eq '5.7.0'
  end

  it 'installs version 4.3.1', :'4.3.1' do
    expect(node_version).to eq '4.3.1'
  end

  it 'installs version 0.12.10', :'0.12.10' do
    expect(node_version).to eq '0.12.10'
  end

  it 'installs version 0.10.42', :'0.10.42' do
    expect(node_version).to eq '0.10.42'
  end

  it 'installs npm version 3.7.3' do
    expect(npm_version).to eq '3.7.3'
  end

  def npm_version
    command('npm -v').stdout.chomp
  end

  def node_version
    command('node -v').stdout.chomp[1..-1]
  end
end

