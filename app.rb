# frozen_string_literal: true

require_relative 'lib/store'
require_relative 'seed'

# Setup products registery
Store.configure do |config|
  config.products = './data/products.json'
  config.discounts = './data/discounts.json'
end

Seed.load

co = Checkout.new
co.scan('VOUCHER')
p co.basket