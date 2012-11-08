module Cms
  class ContentController < Cms::ApplicationController

    before_filter :get_page

    def show
      render_page
    end

    protected

    def render_page
      render layout: @page.template, action: :show
    end

    def get_page
      @page = Page.find_by_path(params[:path])
    end

  end
end
