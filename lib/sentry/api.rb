require 'mechanize'
require 'json'

module Sentry
  class Api

    def initialize(uri)
      @agent = Mechanize.new
      @base_uri = uri
    end

    def login(user, password)
      page = @agent.get(@base_uri)

      form = page.forms.first
      form.username = user
      form.password = password

      response = @agent.submit(form)
      !response.uri.to_s.end_with?('login/')
    end

    def status(group, minutes = 1440, limit = 25)
      response = @agent.get("/api/#{group}/groups/newest/?minutes=#{minutes}&limit=#{limit}")
      JSON.parse(response.content)
    end

  end
end
