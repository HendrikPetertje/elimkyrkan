class SidebarwidgetsController < ApplicationController
  before_action :authenticate_user!

  def new
    @sidebarwidget = Sidebarwidget.new
  end

  def create
    @sidebarwidget = Sidebarwidget.new(sidebarwidget_params)
    if @sidebarwidget.save
      redirect_to root_path, notice: 'sidebarwidget saved'
    else
      flash.now[:error] = 'please check your fields'
      render 'new'
    end
  end

  def edit
  end

  def update
    if @sidebarwidget.update(sidebarwidget_params)
      redirect_to root_path, notice: 'sidebarwidget saved'
    else
      flash.now[:error] = 'please check your fields'
      render 'edit'
    end
  end

  def destroy
    if @sidebarwidget.destroy
      redirect_to root_path, notice: 'sidebarwidget removed'
    else
      flash.now[:error] = 'oops that failed'
      redirect_to root_path
    end
  end

  private

  def sidebarwidget_params
    params.require(:sidebarwidget).permit(:content, :position)
  end

  def set_sidebarwidget
    @sidebarwidget = Sidebarwidget.find(params[:id])
  end
end
