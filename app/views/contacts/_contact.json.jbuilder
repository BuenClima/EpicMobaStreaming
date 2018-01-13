json.extract! contact, :id, :twitchChannel, :email, :message, :gender, :dateToPlay, :created_at, :updated_at
json.url contact_url(contact, format: :json)
