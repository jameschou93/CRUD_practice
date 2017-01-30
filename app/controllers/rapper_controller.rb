class RapperController < ApplicationController

def index
  @rappers = Rapper.all
end

def show
  @rapper = Rapper.find_by(id: params[:id])
  
end

def new
  render "new.html.erb"
end

def create
  @rapper = Rapper.create(name: params[:name], albums: params[:albums])
  redirect_to "/rappers/#{@rapper.id}"
end

def edit 
  @rapper = Rapper.find_by(id: params[:id])

end

def update
   @rapper = Rapper.find_by(id: params[:id])
   @rapper.update(name: params[:name], albums: params[:albums])
   redirect_to "/rappers/#{@rapper.id}"
end

def destroy
   @rapper = Rapper.find_by(id: params[:id])
   @rapper.destroy
   redirect_to '/rappers'
end
end
