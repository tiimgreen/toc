require 'spec_helper'

describe 'Toc' do
  describe 'forground colours' do
    context 'red' do
      subject { "Test".red }
      it { should eq("\e[31mTest\e[0m") }
    end

    context 'green' do
      subject { "Test".green }
      it { should eq("\e[32mTest\e[0m") }
    end
  end

  describe 'background colours' do
    context 'yellow on black' do
      subject { "Test".yellow_on_black }
      it { should eq("\e[33;40mTest\e[0m") }
    end

    context 'light blue on red' do
      subject { "Test".light_blue_on_red }
      it { should eq("\e[36;41mTest\e[0m") }
    end
  end

  describe 'styles' do
    context 'bold' do
      subject { "Test".bold }
      it { should eq("\e[1mTest\e[0m") }
    end

    context 'underline' do
      subject { "Test".underline }
      it { should eq("\e[4mTest\e[0m") }
    end

    context 'inverse' do
      subject { "Test".inverse }
      it { should eq("\e[7mTest\e[0m") }
    end
  end
end
