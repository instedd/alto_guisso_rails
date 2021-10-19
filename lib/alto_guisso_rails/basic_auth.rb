module AltoGuissoRails
  def self.valid_credentials?(email, password)
    authorization = Base64.strict_encode64("#{Guisso.client_id}:#{Guisso.client_secret}")
    client = HTTPClient.new
    client.ssl_config.set_default_paths
    response = client.get Guisso.basic_check_url,
      {email: email, password: password},
      {"Authorization" => "Basic #{authorization}"}
    response.ok?
  end
end
