control 'required_packages' do
  title 'Required packages'
  impact 1.0

  describe package('mtr') do
    it { should be_installed }
  end

  describe package('ntp') do
    it { should be_installed }
  end
  
  describe package('telnet') do
    it { should be_installed }
  end

  describe package('tree') do
    it { should be_installed }
  end
end
