require 'yaml'
require 'fileutils'
require 'rss'
require 'rexml/document'
require 'set'
require 'cgi'
require 'logger'

module RubyTapasDownloader
  class << self
    attr_writer :logger

    def logger
      @logger ||= Logger.new STDOUT
    end
  end
end

require 'bundler/setup'
require 'mechanize'

require_relative 'ruby_tapas_downloader/downloadables'

require_relative 'ruby_tapas_downloader/extractors'

require_relative 'ruby_tapas_downloader/config'
require_relative 'ruby_tapas_downloader/login'
require_relative 'ruby_tapas_downloader/feed_fetcher'
