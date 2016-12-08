Rails.configuration.stripe = {
  publishable_key: ENV['Stripe_Live_Publisheable_key'],
  secret_key:      ENV['Stripe_Live_Secret_Key']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]