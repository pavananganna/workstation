#
# Cookbook Name:: workstation
# Spec:: default
#
<<<<<<< HEAD
# Copyright (c) 2017 The Authors, All Rights Reserved.
=======
# Copyright (c) 2016 The Authors, All Rights Reserved.
>>>>>>> bf32f68c34747d90c7a65701f63bc51e0b1120ac

require 'spec_helper'

describe 'workstation::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
