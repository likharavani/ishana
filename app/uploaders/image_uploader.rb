class ImageUploader < Shrine
  # Include necessary plugins for Shrine
  plugin :validation_helpers
  plugin :cached_attachment_data # Retains cached file data across form redisplays
  plugin :restore_cached_data    # Extracts metadata for cached files

  # Validation for uploaded files
  Attacher.validate do
    validate_mime_type %w[image/jpeg image/png image/webp]
    validate_max_size 30 * 1024 * 1024 # 30 MB limit
  end
end
