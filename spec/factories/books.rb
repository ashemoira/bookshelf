# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :book do
    title Faker::Name.name
    author Faker::Name.name
    genre Random.rand(1..5)
    category Random.rand(1..5)
    publication_date DateTime.current
    page Random.rand(1..5)
  end
end
