FactoryGirl.define do
  factory :make do
    sequence(:name) { |i| "Name #{i}" }
    sequence(:webmotors_id) { |i| i }
  end
end