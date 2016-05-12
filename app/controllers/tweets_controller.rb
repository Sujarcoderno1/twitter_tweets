class TweetsController < ApplicationController

  def extract
    @url = params[:url]
    doc = Nokogiri::HTML(open(@url))
    @tweets = doc.search('.content')
  end

  def index
  end

  # def user_profile
  #   @user_profile = JSON.parse(doc.try(:children).try(:last).try(:elements).try(:first).try(:elements)[75].try(:values).try(:last))['profile_user']
  # end
end