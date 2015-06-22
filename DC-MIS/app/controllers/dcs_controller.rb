class DcsController < ApplicationController
	def index
		@dcs = Dc.all
	end
end
