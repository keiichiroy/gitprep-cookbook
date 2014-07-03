require 'spec_helper'

describe 'gitprep::default' do
  let(:chef_run) do
    runner = ChefSpec::Runner.new
    runner.converge(described_recipe)
  end

  it 'should include the gitprep recipe' do
    expect(chef_run).to include_recipe('gitprep::gitprep')
  end

end
