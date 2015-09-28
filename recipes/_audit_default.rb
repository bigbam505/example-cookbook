#
## Cookbook:: example-cookbook
## Recipe:: default
#

control_group 'example-cookbook::default' do
  control 'directories' do
    it 'the verify directory should exist' do
      expect(file('/verify')).to be_directory
    end
  end

  control 'files' do
    it 'the new file should exist' do # ~FC005
      expect(file('/verify/newfile')).to be_file
    end

    it 'the test file should exist' do
      expect(file('/verify/testfile')).to be_file
    end

    it 'the template file should exist' do
      expect(file('/verify/template.conf')).to be_file
    end
  end
end
