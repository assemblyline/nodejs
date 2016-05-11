require 'serverspec'

describe 'Node.js' do
  it 'installs version 6.1.0', :'6.1.0' do
    expect(node_version).to eq '6.1.0'
  end

  it 'installs version 5.11.1', :'5.11.1' do
    expect(node_version).to eq '5.11.1'
  end

  it 'installs version 4.4.4', :'4.4.4' do
    expect(node_version).to eq '4.4.4'
  end

  it 'installs version 0.12.14', :'0.12.14' do
    expect(node_version).to eq '0.12.14'
  end

  it 'installs npm version 3.8.9' do
    expect(npm_version).to eq '3.8.9'
  end

  def npm_version
    command('npm -v').stdout.chomp
  end

  def node_version
    command('node -v').stdout.chomp[1..-1]
  end
end

