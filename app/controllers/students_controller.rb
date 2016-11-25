class StudentsController < ApplicationController
	def create
		@name = params[:name]
		@age = params[:age]
		@address = "vijayawada"
	end
end
