ActiveAdmin.register_page "Logs" do
  page_action :index do
    @logs = Dir[Rails.root.join("log/*.log")].map do |log|
      File.basename(log, ".log")
    end

    @log = params[:log] || @logs.first
  end

  sidebar "Logs", :partial => "sidebar"
  
  content do
    panel "Log" do
      "radu was here"
    end
  end
end

