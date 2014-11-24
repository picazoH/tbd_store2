# attachment_config = {
#
#   s3_credentials: {
#     access_key_id:     ENV['S3_access_key_id'],
#     secret_access_key: ENV['S3_secret_access_key'],
#     bucket:            ENV['S3_bucket_name']
#   },
#
#   storage:        :s3,
#   s3_headers:     { "Cache-Control" => "max-age=31557600" },
#   s3_protocol:    "http",
#   bucket:         ENV['S3_BUCKET_NAME'],
#   url:            ":s3_domain_url",
#
#   styles: {
#       mini:     "48x48>",
#       small:    "100x100>",
#       product:  "240x240>",
#       large:    "600x600>"
#   },
#
#   path:           "images/:id/:style/:basename.:extension",
#   default_url:    "images/:id/:style/:basename.:extension",
#   default_style:  "product"
# }
#
# attachment_config.each do |key, value|
#   Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
# end