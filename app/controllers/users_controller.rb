class UsersController < ApplicationController

	get '/user/places' do
		@places = current_user.places.order("created_at DESC")
		erb :'/users/user_places'
	end
			get '/login' do
		if logged_in?
			redirect to '/places'
		else
			erb :'/users/login'
		end
	end
		post '/login' do
		user = User.find_by(:username => params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect '/places'
		else
            flash[:notice] = 'Wrong username or password.Please try again.'
			redirect to '/login'    
		end
	end
		get '/signup' do
		if !logged_in?
			erb :'/users/create'
		else
			redirect to '/places'
		end
	end
		post '/signup' do
		if @user = User.new(params)
			@user.save
			session[:user_id] = @user.id
			redirect '/places'
		else
            flash[:notice] ='Sorry there was an error signing  up.Please try again.'
			 redirect to '/users/create'
		end
	end
		get '/logout' do
		session.clear
		redirect to '/login'
	end
end