json.extract! mail_content, :id, :subject, :content, :created_at, :updated_at
json.url mail_content_url(mail_content, format: :json)
