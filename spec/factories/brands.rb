FactoryGirl.define do
  factory :brand do
    sequence(:name) { |i| "Name #{i}" }
    sequence(:webmotors_id) { |i| i }
  end
end