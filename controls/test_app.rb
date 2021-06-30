control 'test_app' do
  title 'Test app'
  impact 1.0

  describe service('httpd') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end

  describe apache_conf do
      its('Listen') { should cmp '80' }
  end

  describe command('curl http://localhost') do
    its('stdout') { should eq 'Hello Afterpay!' }
  end
end
