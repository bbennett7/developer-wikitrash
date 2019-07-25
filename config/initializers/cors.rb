Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'wikitrash.herokuapp.com'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end

# production: origins 'wikitrash.herokuapp.com'

# development: origins 'localhost:3001'
