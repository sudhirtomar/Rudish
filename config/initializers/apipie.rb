Apipie.configure do |config|
  config.app_name                = "Rudish"
  config.api_base_url            = "/api"
  config.doc_base_url            = "/apipie"
  # were is your API defined?
  # debugger
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/*.rb"
end
