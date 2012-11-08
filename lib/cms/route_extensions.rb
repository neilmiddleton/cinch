module Cms::RouteExtensions

  def mount_cms
    mount Cms::Engine => "/cms", :as => "cms"

    match "/", :to => "cms/content#show"
    match "/*path", :to => "cms/content#show"
  end

end
