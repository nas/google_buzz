$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'httparty'
require 'hashie'
require 'google_buzz/error_handler.rb'
require 'google_buzz/interface.rb'
require 'google_buzz/client.rb'
require 'google_buzz/client/activity.rb'
