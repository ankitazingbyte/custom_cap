Rails.configuration.stripe = {
  :publishable_key => 'pk_test_RE7y1XcDVS3iDCt4BLIMM6x4',
  :secret_key      => 'sk_test_f0kppmcboNfj77D8s0vYTYEO'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]