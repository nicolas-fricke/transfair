FactoryGirl.define do
  factory :user do
    email                 'test@transfair.com'
    password              'q2wasd'
    password_confirmation 'q2wasd'
    remember_me           false
  end

  factory :service_partner do
    date_of_birth         '1990-12-12'
    city                  'Berlin'
    education_background  ''
    email                 'test@transfair.com'
    internet_access       true
    internet_use          true
    is_urban              true
    name                  'Thomas Tell'
    phone_number          '030-1234567'
    surname               'Thomas'
    work_experience       'some'
    country_id            1
    education_id          1
    affiliation_id        1
    work_perspective      'some'
    active                true
    internet_price        100
  end

end