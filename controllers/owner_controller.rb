require('sinatra')
require('sinatra/contrib/all') 
require('pry')
require_relative('../models/owner')
also_reload('../models/*')


 #all owners
get '/owners' do
  @owners = Owner.all()
  erb( :"owner_views/index" )
end

# add new owner listing
get '/owners/new' do 
  erb( :"owner_views/new" )
end

# find specific owner
get '/owners/:id' do 
  @owner = Owner.find(params[:id])
  erb( :"owner_views/show")
end


#new owner and save
post '/owners' do 
  @owner = Owner.new(params)
  @owner.save()
  redirect '/owners'
end
