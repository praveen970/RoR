class PhotoController < ApplicationController

  def index

    @users_all = User.all
    @photos_all = Photo.all
    @comments_all = Comment.all
    @parameter = params[:id]
    @photos = @photos_all.where("user_id = ?",@parameter)


  end

end
