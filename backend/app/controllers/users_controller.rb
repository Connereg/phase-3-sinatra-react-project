class UsersController < ApplicationController

    #define a route that makes a get request '/users'
    #return all Users in our table

    get '/users' do
        User.all.to_json(include: :notes)
    end

    post '/users' do
        #user = User.create(
            #name: params[:name],
            #password: params[:password],
        #)
        user = User.create(params)
        user.to_json
    end

    get '/users/:id' do
        user = User.find(params[:id])
        user.to_json(include: :notes)
    end

    patch '/users/:id' do
        user = User.find(params[:id])
        user.update(params)
        user.to_json
    end

    delete '/users/:id' do
        user = User.find(params[:id])
        user.destroy
        user.notes.destroy_all
        user.comments.destroy_all
    end

#end of UsersController    
end