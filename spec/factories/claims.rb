FactoryBot.define do
  factory :claim do
    email "alice@acme.com"
    qtum_address "QfyxAJ2TWX6TzSgmqv2uu6mF85JJj342PY"
    message "0x0079bF6868cB1b7cF4a451311fd70c348F3ED38B"
    signature "ILu2UvQFat1gZPvu2c8xbajqiQY9sURFNM+QpxuOvVnUTlOYCc5enrjYOTVVHiynFCPo2qwKKXRRULteBTVyFUY="
  end
end
