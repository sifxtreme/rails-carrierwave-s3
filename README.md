# rails-carrierwave-s3
Upload images to S3 with Carrierwave in Rails.

Clone this repo and then run:

```
bundle install
rake db:migrate
```

Afterwards you will need to get your keys from AWS for uploading to S3.

Store these keys in your `config/secrets.yml` file. Here is a sample secrets.yml file.

```
development: &defaults
  secret_key_base: 97d49e91eb38eff2c9964f8bee1b394d36a9dc72529ff05efd79a6385bb7ee7d509c24a6e4b203a98284cfb554cd17d54d12d63728e22aa79f73e27006213a95
  amazon_access_key_id: "YOUR AMAZON KEY HERE"
  amazon_secret_access_key: "YOUR AMAZON SECRET HERE"

test:
  <<: *defaults
  secret_key_base: fc0ac399c34ebe1f7eae75c88c222bad0dea3e40b80115601981bda49ece851e1ebbf9ed8b42131fb8327c8b216f2e095f35cc2902c923131ea7752210eed981

# Do not keep production secrets in the repository,
# instead read values from the environment.
production:
  <<: *defaults
  secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>
```

Then you should be up and running! Easily upload images with carrierwave and S3 in Rails!