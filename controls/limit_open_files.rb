control 'limit_open_files' do
  title 'Limit open files'
  impact 1.0

  describe file('/etc/security/limits.d/99-open-files.conf') do
    its('content') { should match(%r{^\*\s+soft\s+nofile\s+65535$}) }
    its('content') { should match(%r{^\*\s+hard\s+nofile\s+65535$}) }
  end
end
