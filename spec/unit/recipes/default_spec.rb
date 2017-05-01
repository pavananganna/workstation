#
# Cookbook Name:: workstation
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'workstation::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end
    
    it 'installs the tree package' do
        expect(chef_run).to install_package('tree')
    end

    it 'installs the git package' do
        expect(chef_run).to install_package('git')
    end

    it 'installs the vim-enhanced package' do
        expect(chef_run).to install_package('vim-enhanced')
    end
    
    it 'creates motd file' do
        expect(chef_run).to create_template('/etc/motd')
    end

    it 'installs the ntp package' do
        expect(chef_run).to install_package('ntp')
    end
    
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
