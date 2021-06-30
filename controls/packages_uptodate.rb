control 'packages_uptodate' do
  title 'Core packages up to date'
  impact 1.0

  describe command('yum update') do
    its('stdout') { should match /No packages marked for update/ }
  end
end
