# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name => 'Chicago' }, { name => 'Copenhagen' }])
#   Mayor.create(name => 'Emanuel', city => cities.first)

Affiliation.delete_all
Affiliation.create([
    {:name => 'FB'},
])

Client.delete_all
Client.create([
  {:company => 'Amnesty International', :email => 'info@amnesty.org', :name => 'Charlize',
   :phone_number => '123-1221235', :position => 'accountant', :surname => 'Foster', :affiliation => Affiliation.first},
  {:company => 'Welthungerhilfe', :email => 'mayer@welthunger.co', :name => 'Jochen',
   :phone_number => '+49/0440/12341', :position => 'CEO', :surname => 'Mayer', :affiliation => Affiliation.first},
])

Country.delete_all
Country.create([
  {:currency => 'MWK', :name => 'Malawi'},
  {:currency => 'GHC', :name => 'Ghana'},
  {:currency => 'Z$', :name => 'Zimbabwe'},
  {:currency => 'CFA Franc', :name => 'Cameroon'},
  {:currency => 'CDF', :name => 'Congo'},
])

Education.delete_all
Education.create([
  {:name => 'primary education'},
  {:name => 'middle school'},
  {:name => 'high school'},
  {:name => 'tertiary education'},
  {:name => 'university'},
  {:name => 'other'},
])

#country1 = Country.new(:currency => 'CDF1', :name => 'Congo1')
#country1.save()

FairWage.delete_all
FairWage.create([
  {:country_id => Country.first.id, :amount => 10, :date => Date.today},
  {:country_id => Country.first.id, :amount => 12, :date => Date.today - 31.days},
])


JobStatus.delete_all
JobStatus.create([
  {:name => 'intention'},
  {:name => 'paused'},
  {:name => 'defined'},
  {:name => 'waiting for available service partner'},
  {:name => 'waiting for confirmation'},
  {:name => 'cannot do it in time'},
  {:name => 'no feedback'},
  {:name => 'offered'},
  {:name => 'handed in'},
  {:name => 'proposition to spot-check'},
  {:name => 'sent to spot-check'},
  {:name => 'spot-checked'},
  {:name => 'to be rated'},
  {:name => 'rated'},
  {:name => 'completed'},
])

JobType.delete_all
JobType.create([
   {:name => 'transcription'},
   {:name => 'translation'},
   {:name => 'online research'},
])

Job.delete_all
Job.create([
  {:client_id => Client.first.id, :job_status_id => JobStatus.first.id, :job_type_id => JobType.first.id,
   :client_paid => false, :deadline_client => DateTime.now + 2.days,
   :deadline_intern => DateTime.now + 4.days, :name => 'Transcription of interview with Christopher Nolan',
   :rating_client => 4, :rating_text => 'good job man'},
  {:client_id => Client.first.id, :job_status_id => JobStatus.first.id, :job_type_id => JobType.first.id,
   :client_paid => false, :deadline_client => DateTime.now,
   :deadline_intern => DateTime.now + 1.day, :name => 'Transcription of interview with Michelle Hunziker',
   :rating_client => 2, :rating_text => 'a bit imprecise, but good all in all'},
])


Language.delete_all
Language.create([
  {:name => 'German'},
  {:name => 'English'},
  {:name => 'Spanish'},
  {:name => 'French'},
  {:name => 'Italian'},
])

ServicePartner.delete_all
ServicePartner.create([
  {:country_id => Country.find_by_name('Malawi').id, :education_id => Education.first.id, :birth_year => 1989, :city => 'Zomba',
   :education_background => '', :email => 'malawiguy@gmail.com', :internet_access => 'sometimes',
   :internet_use => 'often', :is_urban => true, :name => 'malawiguy', :phone_number => '123-123123',
   :surname => '', :work_experience => 'some'},
  {:country_id => Country.find_by_name('Ghana').id, :education_id => Education.find_by_name('middle school').id, :birth_year => 1960, :city => 'Axim',
   :education_background => 'have been to Europe for study 1 semester', :email => 'ghsh@blue.com', :internet_access => '',
   :internet_use => 'often', :is_urban => true, :name => 'rasta', :phone_number => '123-5555123',
   :surname => 'zasta', :work_experience => 'experience and hard worker'},
])

User.delete_all
User.create([
  {:email => 'nicolas@fricke.de', :password => 'nicolas'},
  {:email => 'markus@hinsche.de', :password => 'markus'},
])