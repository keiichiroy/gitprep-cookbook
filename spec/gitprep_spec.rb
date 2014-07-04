require 'spec_helper'

describe 'gitprep::gitprep' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
    end.converge(described_recipe)
  end

  it 'creates group "gitprep"' do
    expect(chef_run).to create_group("gitprep")
  end

  it 'creates user "gitprep"' do
    expect(chef_run).to create_user("gitprep")
  end

end
