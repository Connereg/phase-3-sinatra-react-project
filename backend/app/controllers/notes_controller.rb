class NotesController < ApplicationController

    #define a route that makes a get request '/Notes'
    #return all Notes in our table

    get '/notes' do
        Note.all.to_json(include: :comments)
    end

    post '/notes' do
        #Note = Note.create(
            #name: params[:name],
            #password: params[:password],
        #)
        note = Note.create(params)
        note.to_json
    end

    get '/notes/:id' do
        note = Note.find(params[:id])
        note.to_json(include: :comments)
    end

    patch '/notes/:id' do
        note = Note.find(params[:id])
        note.update(params)
        note.to_json
    end

    delete '/notes/:id' do
        note = Note.find(params[:id])
        note.destroy
        note.comments.destroy_all
    end
#end of NotesController    
end