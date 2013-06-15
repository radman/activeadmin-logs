module ActiveAdminLogs
  class Engine < ::Rails::Engine
    config.after_initialize do
      require File.dirname(__FILE__) + '/../../app/admin/logs.rb'
    end
  end
end
