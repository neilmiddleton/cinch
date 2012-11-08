module Cms
  class Engine < ::Rails::Engine
    isolate_namespace Cms

    initializer 'cms.add_core_routes', :after => 'action_dispatch.prepare_dispatcher' do |app|
      ActionDispatch::Routing::Mapper.send :include, Cms::RouteExtensions
    end

  end
end
