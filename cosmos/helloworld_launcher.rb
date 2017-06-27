#!/usr/bin/env ruby
# encoding: ascii-8bit

require_relative '../tools/tool_launch'
tool_launch do
  require 'cosmos/tools/hello_world/hello_world'
  Cosmos::HelloWorld.run
end
