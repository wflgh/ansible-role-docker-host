require '/tmp/kitchen/spec/spec_helper.rb'

describe 'docker' do

  describe 'is installed' do

    describe package('docker-ce') do

      it "is installed" do
        expect(subject).to be_installed
      end
    end
  end

  describe 'is configured' do

    describe file('/etc/docker') do

      it "is a directory" do
        expect(subject).to be_directory
      end

      it "is owned by root" do
        expect(subject).to be_owned_by 'root'
      end

      it "is grouped in to docker" do
        expect(subject).to be_grouped_into 'docker'
      end

      it "is mode 660" do
        expect(subject).to be_mode 660
      end
    end

    describe file('/etc/docker/daemon.json') do

      it "is a file" do
        expect(subject).to be_file
      end

      it "is owned by root" do
        expect(subject).to be_owned_by 'root'
      end

      it "is grouped in to docker" do
        expect(subject).to be_grouped_into 'docker'
      end

      it "is mode 660" do
        expect(subject).to be_mode 660
      end
    end

    describe service('docker') do

      it "is enabled" do
        expect(subject).to be_enabled
      end
    end

    describe service('docker') do
      it "is running" do
        expect(subject).to be_running
      end
    end
  end
end
