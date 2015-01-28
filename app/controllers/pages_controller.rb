class PagesController < ApplicationController
  before_action :set_page, only: [:edit, :update]

  def home
    @homeintro = Page.find_by(title: 'home-intro')
  end

  def activities
  end

  def about
  end

  def program
  end

  def links
  end

  def contact
  end

  def prayer
  end

  # and now the real deal
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

  def set_page
    @page = Page.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:content)
  end
end
