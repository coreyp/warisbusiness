#!/usr/bin/env ruby
#
require "bundler"
Bundler.setup
require "jekyll-reposter"

reposter = Jekyll::Reposter.new "http://realpolitikreport.com/tt-rss/public.php?op=rss&id=-1026&key=7052980efa192ef541c3690878514b483d469002",
  :tags => "[RP]", :pretend => false, :dir => "source/_posts"

reposter.create_if do |entry|
  true
end
