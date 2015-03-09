require 'open-uri'
require 'json'

module Ruboty
  module GithubStatus
    module Actions
      class GithubStatus < Ruboty::Actions::Base
        def status
          html = open('https://status.github.com/api/status.json').read
          json = JSON.parser.new(html).parse
          now = Time.now
          date = Time.parse(json['last_updated']).getlocal
          p now
          p date
          seconds_ago = (now - date).to_i

          msg = "Status: #{json['status']} (#{seconds_ago} seconds ago)"

          message.reply(msg)
        end

        def last_message
          html = open('https://status.github.com/api/last-message.json').read
          json = JSON.parser.new(html).parse
          date = Time.parse(json['created_on']).getlocal

          msg = "Status: #{json['status']}\n"
          msg += "Message: #{json['body']}\n"
          msg += "Date: #{date}"

          message.reply(msg)
        end
      end
    end
  end
end
