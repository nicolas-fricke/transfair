# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name => 'Chicago' }, { name => 'Copenhagen' }])
#   Mayor.create(name => 'Emanuel', city => cities.first)

Affiliation.delete_all
Affiliation.create([
    {:name => 'choose this if you used our services before'},
    {:name => 'Friends/ colleagues/ family'},
    {:name => 'at an offline event'},
    {:name => 'resulted at a search engine'},
    {:name => 'online advertisement (facebook)'},
    {:name => 'online advertisement (google)'},
    {:name => 'read about it in a blog'},
    {:name => 'read about it in a newspaper'},
    {:name => 'online advertisement (facebook)'},
    {:name => 'online advertisement (google)'},
    {:name => 'social network/ twitter'},
    {:name => 'other'},

])

Country.delete_all
Country.create([
  {:currency => 'BDT', :name => 'Bangladesh'},
  {:currency => 'BOB', :name => 'Bolivia'},
  {:currency => 'XAF', :name => 'Cameroon'},
  {:currency => 'CNY', :name => 'China'},
  {:currency => 'GHC', :name => 'Ghana'},
  {:currency => 'INR', :name => 'India'},
  {:currency => 'IDR', :name => 'Indonesia'},
  {:currency => 'KZT', :name => 'Kazakhstan'},
  {:currency => 'KES', :name => 'Kenya'},
  {:currency => 'MWK', :name => 'Malawi'},
  {:currency => 'NGN', :name => 'Nigeria'},
  {:currency => 'PKR', :name => 'Pakistan'},
  {:currency => 'PGK', :name => 'Papa New Guinea'},
  {:currency => 'PHP', :name => 'Philippines'},
  {:currency => 'LKR', :name => 'Sri Lanka'},
  {:currency => 'TZS', :name => 'Tanzania'},
  {:currency => 'THB', :name => 'Thailand'},
  {:currency => 'UGX', :name => 'Uganda'},
  {:currency => 'VND', :name => 'Vietnam'},
  {:currency => 'USD', :name => 'Zimbabwe'},
])

Client.delete_all
Client.create([
  {:company => 'Steinbeis University', :email => 'bbulatovic@steinbeis-icrm.eu', :name => 'Boris',
   :phone_number => '', :position => 'coordinator course of study "responsible management"', :surname => 'Bulatovic',
   :country_id =>Country.first.id, :affiliation => Affiliation.first},
  {:company => 'HSFK', :email => 'fey@hsfk.de', :name => 'Marco',
   :phone_number => '', :position => 'PhD Student', :surname => 'Fey',
   :country_id =>Country.first.id, :affiliation => Affiliation.first},
  {:company => 'HSFK', :email => 'poppe@hsfk.de', :name => 'Annika',
   :phone_number => '', :position => 'PhD Student', :surname => 'Poppe',
   :country_id =>Country.first.id, :affiliation => Affiliation.first},
  {:company => 'iq-consult', :email => 'chri_noel@hotmail.com', :name => 'Christing',
   :phone_number => '', :position => 'intern', :surname => 'Noel',
   :country_id =>Country.first.id, :affiliation => Affiliation.first},
  {:company => 'HSFK', :email => 'herr@hsfk.de', :name => 'Steffi',
   :phone_number => '', :position => 'PhD Student', :surname => 'Herr',
   :country_id =>Country.first.id, :affiliation => Affiliation.first},
  {:company => 'project winch 5', :email => 'pisani.winch5@gmail.com', :name => 'Francis',
   :phone_number => '', :position => 'journalist', :surname => 'Pisani',
   :country_id =>Country.first.id, :affiliation => Affiliation.first},
  {:company => 'Robotspodcast', :email => 'adrien.briod@robotspodcast.com', :name => 'Adrien',
   :phone_number => '+41788317234', :position => '', :surname => 'Briod',
   :country_id =>Country.first.id, :affiliation => Affiliation.first},
  {:company => 'Löwenherz Grafikdesign', :email => 'jan@janloewenherz.com', :name => 'Jan',
   :phone_number => '', :position => 'freelancer', :surname => 'Löwenherz',
   :country_id =>Country.first.id, :affiliation => Affiliation.first},
])

Education.delete_all
Education.create([
  {:name => 'primary education'},
  {:name => 'middle school'},
  {:name => 'high school'},
  {:name => 'tertiary education/university'},
  {:name => 'other'},
])

#country1 = Country.new(:currency => 'CDF1', :name => 'Congo1')
#country1.save()

FairWage.delete_all
FairWage.create([
  {:country_id => Country.find_by_name('Bangladesh'), :amount => 125, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Bolivia').id, :amount => 12.5, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Cameroon').id, :amount => 825, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('China').id, :amount => 11, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Ghana').id, :amount => 2.75, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('India').id, :amount => 85, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Indonesia').id, :amount => 15375, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Kazakhstan').id, :amount => 250, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Kenya').id, :amount => 175, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Malawi').id, :amount => 275, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Nigeria').id, :amount => 275, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Pakistan').id, :amount => 150, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Papa New Guinea').id, :amount => 3.75, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Philippines').id, :amount => 75, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Sri Lanka').id, :amount => 187.5, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Tanzania').id, :amount => 2875, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Thailand').id, :amount => 52.5, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Uganda').id, :amount => 5000, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Vietnam').id, :amount => 36250, :date => Date.new(2012,8,7)},
  {:country_id => Country.find_by_name('Zimbabwe').id, :amount => 1.75, :date => Date.new(2012,8,7)},

])


JobStatus.delete_all
JobStatus.create([
  {:name => 'intention'},
  {:name => 'paused'},
  {:name => 'defined'},
  {:name => 'waiting'},
  {:name => 'waiting for deadline extension'},
  {:name => 'offered'},
  {:name => 'cancelled'},
  {:name => 'accepted'},
  {:name => 'handed in'},
  {:name => 'late'},
  {:name => 'late without news'},
  {:name => 'offered to spot-check'},
  {:name => 'sent to spot-check'},
  {:name => 'spot-check by TF'},
  {:name => 'cannot do it in time'},
  {:name => 'recieved revised version'},
  {:name => 'setn back to SP'},
  {:name => 'delivered to customer'},
  {:name => 'to be rated'},
  {:name => 'rated'},
  {:name => 'completed'},
])

JobType.delete_all
JobType.create([
   {:name => 'transcription'},
   {:name => 'translation'},
   {:name => 'research assistance'},
])

Language.delete_all
Language.create([
  {:name => 'German'},
  {:name => 'English'},
  {:name => 'French'},
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
], :without_protection => true)
                #, :language_id => Language.first.id

ServicePartner.delete_all
sp1 = ServicePartner.create(
  :country_id => Country.find_by_name('Kenya').id, :education_id => Education.find_by_name('tertiary education/university').id, :date_of_birth => Date.new(1979,4,27), :city => '',
  :education_background => 'I have studied economics to a diploma level among other certificates.', :email => 'ngugij12@gmail.com', :internet_access => 'at home',
  :internet_use => '2-3 times per week', :is_urban => true, :name => 'James', :phone_number => '',
  :surname => 'Ngugi', :work_experience => 'I have been self employed but finding it hard to sustain because of the economic situation in the country.')
sp2 = ServicePartner.create(
  :country_id => Country.find_by_name('Uganda').id, :education_id => Education.find_by_name('tertiary education/university').id, :date_of_birth => Date.new(1989,4,4), :city => '',
  :education_background => 'I did Literature, Economics, History and Divinity in A Level at Kings College Budo.I have also finished my three years Bachelor of Science Degree in Accounting and Finance at Kyambogo University this year in May.', :email => 'tom.kalyesubula@aiesec.net', :internet_access => 'at home',
  :internet_use => 'every days', :is_urban => true, :name => 'Tom', :phone_number => '+2556779222883',
  :surname => 'Kalyesubula', :work_experience => 'I have been working part time for AIESEC Uganda for the past two years. First as Local chapter Vice president for Finance and Administration, then for a year as Local Chapter President and now as the National Vice President for Product and Business Development.I was also while being president at the University worked a day job at Village Energy Company Limited as Finance and Administration Manager.')

ServicePartner.create([
])

Employment.delete_all
Employment.create([
  {:service_partner => sp1, :job => Job.first, :paid => false},
  {:service_partner => sp2, :paid => false},
], :without_protection => true)

User.delete_all
User.create([
  {:email => 'nicolas@fricke.de', :password => 'nicolas'},
  {:email => 'markus@hinsche.de', :password => 'markus'},
])