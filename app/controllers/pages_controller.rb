class PagesController < ApplicationController
  before_action :set_page, only: [:edit, :update]
  before_action :set_sidebar

  def home
    @title = 'välkommen'
    @pagecontent = Page.find_by(title: 'home-intro')
  end

  def activities
    @title = 'Aktiviteter'
    @pagecontent = Page.find_by(title: 'activity-intro')
    render 'home'
  end

  def about
    @title = 'Om oss'
    @pagecontent = Page.find_by(title: 'about-intro')
    render 'home'
  end

  def program

  end

  def links
    @title = 'Länkar'
    @pagecontent = Page.find_by(title: 'links-intro')
    render 'home'
  end

  def contact
  end

  def prayer
    @title = 'Förbön'
    @pagecontent = Page.find_by(title: 'prayer-intro')
    render 'home'
  end

  # and now the real deal modifying and editting texts on the page
  def edit
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(page_params)
      redirect_to root_path, notice: 'Page edited'
    else
      flash.now[:error] = 'Please look at the fields again'
      render 'edit'
    end
  end

  private

  def set_sidebar
    @sidebarwidgets = Sidebarwidget.all
  end

  def set_page
    @page = Page.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:content)
  end
end
