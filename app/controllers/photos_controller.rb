class PhotosController < ApplicationController

def index
# can leave out "/photos" because that is the name of the controller
@all_photos = Photo.all.order({:created_at => :desc })
    render("index.html.erb")
end

def show
# The params has looks like this: {"the_id_number"=>"1"}

id_number = params["the_id_number"]
@photo = Photo.find(id_number)

@the_caption = @photo.caption
@the_image_url = @photo.source
@created_at = @photo.created_at

    render("show.html.erb")
end

def new_form
  render("new_form.html.erb")
end

def create_row

p = Photo.new
p.source = params["the_image_url"]
p.caption = params["the_caption"]
p.save

# render("create_row.html.erb"), instead use redirect_to
  redirect_to("/photos")

end

def edit_form
@photo = Photo.find(params[:the_id])
  render("edit_form.html.erb")
end

def update_row
  p = Photo.find(params[:the_id])
  p.source = params["the_image_url"]
  p.caption = params["the_caption"]
  p.save

  # render("update_row.html.erb"), instead use redirect_to
    redirect_to("/photos")
end


end
