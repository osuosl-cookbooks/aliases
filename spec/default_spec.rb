require_relative 'spec_helper'

describe 'aliases::default' do
  ALL_PLATFORMS.each do |p|
    context "#{p[:platform]} #{p[:version]}" do
      cached(:chef_run) do
        ChefSpec::SoloRunner.new(p).converge(described_recipe)
      end
      it do
        expect(chef_run).to add_magic_shell_alias('ll').with(command: 'ls -l')
      end
      it do
        expect(chef_run).to add_magic_shell_environment('EDITOR').with(
          value: 'vim'
        )
      end
    end
  end
end
