class BannersController < ApplicationController
  before_action :authenticate_user!

  def new
    @banner = Banner.new
  end

  def create
    @banner = Banner.new(banner_params)
    return redirect_to root_path, notice: 'Banner saved' if @banner.save
    flash.now[:error] = 'Please review the fields'
    render 'new'
  end

  def edit
  end

  def update
    return redirect_to root_path, notice: 'Banner saved' if @banner.save
    flash.now[:error] = 'Please review the fields'
    render 'edit'
  end

  def destroy
    return redirect_to root_path notice: 'Banner removed' if @banner.destroy
    flash[:error] = 'Woops Banner could not be removed'
    redirect_to root_path
  end

  private

  def set_banner
    @banner = Banner.find(params[:id])
  end

  def banner_params
    params.require(:banner).permit(:title, :shorttitle, :photo, :photo_cache,
                                   :link, :position)
  end
end
