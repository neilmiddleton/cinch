module Cms
  class Page < ActiveRecord::Base
    attr_accessible :name, :path, :template, :title
  end
end
