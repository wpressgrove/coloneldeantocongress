class Admin::VideosController < AdminController
  load_and_authorize_resource
  before_action :set_video, except: [:index]

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to admin_media_path
    else
      render 'new'
    end
  end

  def update
    if @video.update_attributes(video_params)
      redirect_to admin_media_path
    else
      render 'edit'
    end
  end

  private

  def video_params
    params.require(:video).permit(:title, :file)
  end

  def set_video
    Video.find(params[:id]) rescue Video.new
  end
end
