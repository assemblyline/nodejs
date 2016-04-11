require 'serverspec'

describe 'Node.js' do
  it 'installs version 5.10.1', :'5.10.1' do
    expect(node_version).to eq '5.10.1'
  end

  it 'installs version 4.4.2', :'4.4.2' do
    expect(node_version).to eq '4.4.2'
  end

  it 'installs version 0.12.13', :'0.12.13' do
    expect(node_version).to eq '0.12.13'
  end

  it 'installs version 0.10.44', :'0.10.44' do
    expect(node_version).to eq '0.10.44'
  end


  it 'installs npm version 3.7.3' do
    expect(npm_version).to eq '3.8.6'
  end

  def npm_version
    command('npm -v').stdout.chomp
  end

  def node_version
    command('node -v').stdout.chomp[1..-1]
  end
end

