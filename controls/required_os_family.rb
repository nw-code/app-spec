control 'required_os_family' do
  title 'Required os_family'
  impact 1.0

  describe os.linux? do
    it { should eq true }
  end
end
