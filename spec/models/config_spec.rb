require File.dirname(__FILE__) + '/../spec_helper'
require 'taskwarrior-web/config'
require 'ostruct'

describe TaskwarriorWeb::Config do
  describe '.property' do
    it 'should call #[] on the config file object' do
      file = {}
      TaskwarriorWeb::Config.should_receive(:file).and_return(file)
      file.should_receive(:[]).with('testing')
      TaskwarriorWeb::Config.property('testing')
    end
  end
end
