ActiveAdmin.register_page "Logs" do
  page_action :index do
    @logs = Dir[Rails.root.join("log/*.log")].map do |log|
      File.basename(log, ".log")
    end

    @log = params[:log] || @logs.first
  end

  page_action :refresh do
    log_file = Rails.root.join("log/#{params[:log]}.log")
    log = `tail -n 10 #{log_file}`
    safe_log = Rack::Utils.escape_html(log)
    render :text => "#{safe_log}"
  end

  sidebar "Logs", :partial => "sidebar"
  
  content do
    panel "Log" do
      render "log"
    end
  end
  
end

