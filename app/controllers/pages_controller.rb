class PagesController < ApplicationController
  def home
  

require 'rubygems'
require 'mechanize'

@url = params[:url]

@title = ""
 
    unless @url.blank?
      @url = @url.split("//")
      # Add http:// to the url if the user hasn't 
      if not (@url[0] == "http:" or @url[0] == "https:")
        @url = "http://" + params[:url]
      else
        @url = params[:url]
      end
        
        @title1 = Mechanize.new.get(@url).title
        @keyword = Pismo::Document.new(@url).keywords
        @description = Pismo::Document.new(@url).description
  
            


      


    end


   end

  end



