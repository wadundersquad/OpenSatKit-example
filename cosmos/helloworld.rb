# encoding: ascii-8bit

# Copyright 2014 Ball Aerospace & Technologies Corp.
# All Rights Reserved.
#
# This program is free software; you can modify and/or redistribute it
# under the terms of the GNU General Public License
# as published by the Free Software Foundation; version 3 with
# attribution addendums as found in the LICENSE.txt

require 'cosmos'
Cosmos.catch_fatal_exception do
  require 'cosmos/gui/qt_tool'
end

module Cosmos

  # Creates command and telemetry handbooks from the COSMOS definitions in
  # both HTML and PDF format.
  class HelloWorld < QtTool

    def initialize (options)
      super(options) # MUST BE FIRST - All code before super is executed twice in RubyQt Based classes
      Cosmos.load_cosmos_icon("handbook_creator.png")

      @central_widget = Qt::Widget.new
      setCentralWidget(@central_widget)

      @top_layout = Qt::VBoxLayout.new

      
      @open_button = Qt::Label.new('Hello world')
      @top_layout.addWidget(@open_button)

      @central_widget.setLayout(@top_layout)
      complete_initialize()

    end

    # Runs the application
    def self.run(option_parser = nil, options = nil)
      Cosmos.catch_fatal_exception do
        unless option_parser and options
          option_parser, options = create_default_options()
          options.title = "Hello world"
        end
        super(option_parser, options)
      end
    end

  end # class HandbookCreator

end # module Cosmos
