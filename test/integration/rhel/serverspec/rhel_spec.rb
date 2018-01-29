require '/tmp/kitchen/spec/spec_helper.rb'

describe 'rhel' do

  describe 'packages are not installed' do

    describe package('docker') do

      it "is not installed" do
        expect(subject).not_to be_installed
      end
    end

    describe package('docker-common') do

      it "is not installed" do
        expect(subject).not_to be_installed
      end
    end

    describe package('docker-engine') do

      it "is not installed" do
        expect(subject).not_to be_installed
      end
    end
  end

  describe 'yum repos are enabled' do

    describe yumrepo('docker-ce-stable') do
      it "is enabled" do
        expect(subject).to be_enabled
      end
    end
  end

  describe 'prereq packages are installed' do

    describe package('device-mapper-persistent-data') do

      it "is installed" do
        expect(subject).to be_installed
      end
    end

    describe package('lvm2') do

      it "is installed" do
        expect(subject).to be_installed
      end
    end
  end
end
