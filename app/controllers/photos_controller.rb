class PhotosController < ApplicationController

def index
# can leave out "/photos" because that is the name of the controller
@all_photos = Photo.all
    render("index.html.erb")
end

def show
# The params has looks like this: {"the_id_number"=>"1"}

id_number = params["the_id_number"]
p = Photo.find(id_number)

@the_caption = p.caption
@the_image_url = p.source
@created_at = p.created_at

    render("show.html.erb")
end



end
