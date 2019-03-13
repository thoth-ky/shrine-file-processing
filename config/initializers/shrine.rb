require "cloudinary"
require "shrine/storage/cloudinary"

Cloudinary.config(
  cloud_name: Rails.application.credentials.cloudinary[:cloud_name],
  api_key:    Rails.application.credentials.cloudinary[:api_key],
  api_secret: Rails.application.credentials.cloudinary[:api_secret_key],
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "cache"), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: "store"),
}