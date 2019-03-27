require('sinatra')
require('sinatra/contrib/all') 
require('pry')
require_relative('../models/animal')
also_reload('../models/*')


#all animals
get '/animals' do 
  @animals = Animal.all()
  erb( :"animal_views/index" )
end

#add new animal listing
get '/animals/new' do 
  erb( :"animal_views/new" )
end

#specific animal
get '/animals/:id' do 
  @animal = Animal.find(params[:id])
  erb(:"animal_views/show")
end

#find specific animal to update
get '/animals/:id/edit' do 
  @animal = Animal.find(params[:id])
  erb(:"animal_views/edit")
end

#create a new animal and save
post '/animals' do 
  @animal = Animal.new(params)
  @animal.save()
  redirect '/animals'
end


#user can update animal in db
post '/animals/:id/update' do 
  @animal = Animal.new(params)
  @animal.update()
  redirect '/animals'
end
