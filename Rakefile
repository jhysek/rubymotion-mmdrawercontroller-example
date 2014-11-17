# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  app.name = 'mmdrawer-motion'
  app.identifier = 'demo.jirihysek.drawer'

  app.pods do
    pod 'MMDrawerController', '~> 0.5.7'
  end
end
