require "bnsly/version"

module Bnsly
  require 'faraday'
  require 'json'
  require 'open-uri'
  
  API_URL = "https://bnsly.co"
  
  def add(url)
    url = URI::encode(url, expires=false)
    if !expires
      response = Faraday.get("#{API_URL}/add/#{url}")
    else
      expires = expires.to_i
      response = Faraday.get("#{API_URL}/add/#{expires}/#{url}")
    end
    attributes = JSON.parse(response.body)
  end
  
  def lookup(guid)
    response = Faraday.get("#{API_URL}/#{guid}")
    attributes = JSON.parse(response.body)
  end
  
end
