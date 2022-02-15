module ApplicationHelper

  def check_status(gurl, gdata)
    uri = URI.parse(gurl)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    data = gdata

    request = Net::HTTP::Post.new(uri.path, {'Content-Type' => 'application/json'})
    request.body = data.to_json

    response = http.request(request)
    p "SDFSFSDFSDFSD"
    p response
    p "SDFSDFSDFSDFSDF"
  end
end
