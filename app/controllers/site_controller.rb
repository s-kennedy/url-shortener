class SiteController < ApplicationController

	def home
		@all_long_links = Link.order(visits: :desc)
	end

	def redirect
		Link.find(params[:id]).add_visit
		redirect_to Link.find(params[:id]).long_link
	end

	def all
		@all_long_links = Link.order(long_link: :asc)
	end

	def top
		@top_links = Link.order(visits: :desc).limit(10)
	end

end
