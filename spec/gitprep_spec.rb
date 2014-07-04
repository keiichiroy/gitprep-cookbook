require 'spec_helper'

describe 'gitprep::gitprep' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates group "gitprep"' do
    expect(chef_run).to create_group("gitprep")
  end

  it 'creates user "gitprep"' do
    expect(chef_run).to create_user("gitprep")
  end

  it 'checkouts gitprep repository' do
    expect(chef_run).to sync_git("/var/lib/gitprep")
      .with(repository: "https://github.com/yuki-kimoto/gitprep")
      .with(checkout_branch: "latest")
  end

end
