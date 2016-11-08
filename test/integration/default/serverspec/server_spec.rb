require 'serverspec'

set :backend, :exec

describe file('/etc/profile.d/ll.sh') do
  it { should be_file }
  its(:content) { should include('alias ll="ls -l"') }
end

describe file('/etc/profile.d/EDITOR.sh') do
  it { should be_file }
  its(:content) { should include('export EDITOR="vim"') }
end
