describe port(80) do
it { should be_listening }
end

describe http('http://localhost/', enable_remote_worker: true) do
its ('status') { should cmp 200}
#its ('body') { should match /Hello, World!/}
end

control 'jwsapache-01' do
 impact 1.0
 title 'Web Server ID - Unique group'
 desc 'An ID which runs the web server'
 tag requirements: 'B - baseline'
 tag section: 'AK.1.7.6'
 tag heading: 'Identify and Authenticate Users'

 # Create a new, unique group that the server will run as.
 tag action: 'Create a new, unique group that the server will run as.'

 # Rules:
 # Unix Users.Unix User:/eemadmin exists  AND
 # Unix Groups.Unix Group:/eemgrp exists  AND
 # Unix Users.Unix User:/hostmstr exists  AND
 # Unix Groups.Unix Group:/hostmstr exists

 describe group('eemgrp') do
   it { should exist }
 end

 describe group('hostmstr') do
   it { should exist }
 end

# describe processes('httpd') do
   #its('group') { should include 'eemgrp' }
 #end
end
describe directory('/tech/web') do
   it { should exist }
   it { should be_owned_by 'hostmstr' }
   its('group') { should eq 'hostmstr' }
   its('mode') { should cmp '0775' }
 end

