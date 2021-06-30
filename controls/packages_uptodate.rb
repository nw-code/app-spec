control 'packages_uptodate' do
  title 'Core packages up to date'
  impact 1.0

  describe command('yum check-update') do
    its('exit_status') { should eq 0 }
  end
end
