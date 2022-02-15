class StatusesController < ApplicationController
  def index
    @statuses = statuses

    uri = URI('https://www.georgestreetphoto.com/scheduler/appointment')
    params = { :limit => 10, :page => 3 }
    uri.query = URI.encode_www_form(params)

    res = Net::HTTP.get_response(uri)
    puts res.body if res.is_a?(Net::HTTPSuccess)
  end
end
