API_KEY = "5b9841f5cac1ce98cf96708a291fad2f"
BASE_URL = "http://api.openweathermap.org/data/2.5/forecast"
require "json"
require "open-uri"

class HomeController < ApplicationController

  def top
    response = open(BASE_URL + "?q=tokyo,jp&APPID="+API_KEY)
    gon.weather= response.read
  end


end
