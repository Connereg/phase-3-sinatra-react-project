class CommentsController < ApplicationController

    #define a route that makes a get request '/Comments'
    #return all Comments in our table

    get '/comments' do
        Comment.all.to_json(include: :user)
    end

    post '/comments' do
        #comment = comment.create(
            #name: params[:name],
            #password: params[:password],
        #)
        comment = Comment.create(params)
        comment.to_json
    end

    get '/comments/:id' do
        comment = Comment.find(params[:id])
        comment.to_json(include: :user)
    end

    patch '/comments/:id' do
        comment = Comment.find(params[:id])
        comment.update(params)
        comment.to_json
    end

    delete '/comments/:id' do
        comment = Comment.find(params[:id])
        comment.destroy
    end
#end of CommentsController    
end