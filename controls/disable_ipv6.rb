control 'disable_ipv6' do
  title 'Disable IPv6'
  impact 1.0

  describe file('/etc/sysctl.d/99-disable-ipv6.conf') do
    its('content') { should match(%r{^net\.ipv6\.conf\.all\.disable_ipv6=1$}) }
    its('content') { should match(%r{^net\.ipv6\.conf\.default\.disable_ipv6=1$}) }
  end
end
