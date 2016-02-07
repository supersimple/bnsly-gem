require "bnsly/version"

module Bnsly
  require 'faraday'
  require 'json'
  require 'open-uri'
  
  API_URL = "http://localhost:7171"
  
  def self.add(url, expires=false)
    url = URI.encode_www_form_component(url)
    if !expires
      response = Faraday.get("#{API_URL}/add/#{url}")
    else
      expires = expires.to_i
      response = Faraday.get("#{API_URL}/add/#{expires}/#{url}")
    end
    attributes = JSON.parse(response.body)
  end
  
  def self.lookup(guid)
    response = Faraday.get("#{API_URL}/lookup/#{guid}")
    attributes = JSON.parse(response.body)
  end
  
end
