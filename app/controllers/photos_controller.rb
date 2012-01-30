class PhotosController < ApplicationController
  
def show
end

def new
end

def edit
end

def create
      binding.pry
  if @photo.save
    respond_to do |format|
      format.html { redirect_to [@photo], :notice => 'Photo successfully created' }
      format.js
    end
  else
    render :new
  end
end

def hola
  @photo = Photo.new(params[:photo])
   if @photo.save
     respond_to do |format|
       format.html { redirect_to [@photo], :notice => 'Photo successfully created' }
       format.js
     end
   else
     render :new
   end
end


def update
  if @photo.update_attributes(params[:photo])
    redirect_to [@photo], :notice => 'Photo successfully updated'
  else
    render :edit
  end
end

def destroy
  @photo.destroy
  redirect_to @story
end


end

