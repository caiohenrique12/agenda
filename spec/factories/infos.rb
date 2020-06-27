FactoryBot.define do
  factory :info do
    nome { Faker::Name.name  }
    endereco { Faker::Address.street_name }
    numero { Faker::Address.building_number  }
    bairro { Faker::Address.community }
    cidade { Faker::Address.city }
  end
end