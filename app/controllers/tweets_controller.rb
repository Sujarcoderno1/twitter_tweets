class TweetsController < ApplicationController
require 'open-uri'

  def extract
    @url = params[:url]
    doc = Nokogiri::HTML(open(@url))
    @user_profile = JSON.parse(doc.try(:children).try(:last).try(:elements).try(:first).try(:elements)[75].try(:values).try(:last))['profile_user']
    @tweets = doc.search('.content')
  end

  def index
  end

end