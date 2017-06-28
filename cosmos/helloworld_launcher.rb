#!/usr/bin/env ruby
# encoding: ascii-8bit

require_relative '../../../../tools/tool_launch'
tool_launch do
  require_relative 'helloworld'
  Cosmos::HelloWorld.run
end
