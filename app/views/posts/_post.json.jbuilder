json.extract! post, :id, :landing_title, :landing_text, :service_text_string, :scrub_title, :scrub_text, :cet_title, :cet_text, :tane_title, :tane_text, :testimony_text, :testimony_sender, :address, :phone, :email, :created_at, :updated_at
json.url post_url(post, format: :json)
