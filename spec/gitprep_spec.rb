require 'spec_helper'

describe 'gitprep::gitprep' do
  let(:chef_run) do
    runner = ChefSpec::Runner.new
    runner.converge(described_recipe)
  end
end
