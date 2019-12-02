FactoryGirl.define do
  factory :country, class: SomeModule::Country do
    name { 'United Kingdom' }
    code { 'UK' }
  end
end
