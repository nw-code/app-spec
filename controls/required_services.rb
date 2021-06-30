control 'required_services' do
  title 'Required services'
  impact 1.0

  describe service('ntpd') do
    it { should be_enabled }
    it { should be_running }
  end
end
