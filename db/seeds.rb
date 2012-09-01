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
    {:name => 'my girlfriend told me'},
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

User.delete_all
User.create([
  {:email => 'nicolas@fricke.de', :password => 'nicolas'},
  {:email => 'markus@hinsche.de', :password => 'markus'},
])

Client.create([
  {:company => 'Stuutgart University', :email => 'blatovic@steinbeis-icrm.eu', :name => 'Boris',
   :phone_number => '', :position => 'coordinator course of study "responsible management"', :surname => 'Blatovic',
   :country =>Country.first, :affiliation => Affiliation.first, :password => "password"},
  {:company => 'HBFK', :email => 'fly@hbfk.de', :name => 'Mark',
   :phone_number => '', :position => 'PhD Student', :surname => 'Fly',
   :country =>Country.first, :affiliation => Affiliation.first, :password => "password"},
  {:company => 'HSBK', :email => 'pop@hsbk.de', :name => 'Ann',
   :phone_number => '', :position => 'PhD Student', :surname => 'Pop',
   :country =>Country.first, :affiliation => Affiliation.first, :password => "password"},
  {:company => 'IQ', :email => 'christopher_nolan@hotmail.com', :name => 'Christopher',
   :phone_number => '', :position => 'intern', :surname => 'Nolan',
   :country =>Country.first, :affiliation => Affiliation.first, :password => "password"},
  {:company => 'HBFK', :email => 'jerry@hbfk.de', :name => 'Jeff',
   :phone_number => '', :position => 'PhD Student', :surname => 'Jerry',
   :country =>Country.first, :affiliation => Affiliation.first, :password => "password"},
  {:company => 'project wiki 5', :email => 'pikani.wiki5@gmail.com', :name => 'Frank',
   :phone_number => '', :position => 'journalist', :surname => 'Pikani',
   :country =>Country.first, :affiliation => Affiliation.first, :password => "password"},
  {:company => 'Radiopodcast', :email => 'adrion.brown@radiopodcast.com', :name => 'Adrion',
   :phone_number => '+491762379800', :position => '', :surname => 'Brown',
   :country =>Country.first, :affiliation => Affiliation.first, :password => "password"},
  {:company => 'Löwez Grafikdesign', :email => 'jane@janlowez.com', :name => 'Jane',
   :phone_number => '', :position => 'freelancer', :surname => 'Löwez',
   :country =>Country.first, :affiliation => Affiliation.first, :password => "password"},
])

sp1 = ServicePartner.create(
  :country => Country.find_by_name('Kenya'), :education => Education.find_by_name('tertiary education/university'), :date_of_birth => Date.new(1979,4,27), :city => '',
  :education_background => 'I have studied economics to a diploma level among other certificates.', :email => 'ngugij12@gmail.com', :internet_access => 'at home',
  :internet_use => '2-3 times per week', :is_urban => true, :name => 'James', :phone_number => '',
  :surname => 'Ngugi', :work_experience => 'I have been self employed but finding it hard to sustain because of the economic situation in the country.')
sp2 = ServicePartner.create(
  :country => Country.find_by_name('Uganda'), :education => Education.find_by_name('tertiary education/university'), :date_of_birth => Date.new(1989,4,4), :city => '',
  :education_background => 'I did Literature, Economics, History and Divinity in A Level at Kings College Budo.I have also finished my three years Bachelor of Science Degree in Accounting and Finance at Kyambogo University this year in May.', :email => 'tom.kalyesubula@aiesec.net', :internet_access => 'at home',
  :internet_use => 'every days', :is_urban => true, :name => 'Tom', :phone_number => '+2556779222883',
  :surname => 'Kalyesubula', :work_experience => 'I have been working part time for AIESEC Uganda for the past two years. First as Local chapter Vice president for Finance and Administration, then for a year as Local Chapter President and now as the National Vice President for Product and Business Development.I was also while being president at the University worked a day job at Village Energy Company Limited as Finance and Administration Manager.')
sp3 = ServicePartner.create(
  :country => Country.find_by_name('Nigeria'), :affiliation => Affiliation.find_by_name('online advertisement (facebook)'), :education => Education.find_by_name('tertiary education/university'), :date_of_birth => Date.new(1987,1,1), :city => 'Abuja',
  :education_background => 'Institution - Qualification Obtained - Date 1. Nigerian Law school, Bwari, Abuja - BL Law - 2011 2. University of Abuja, Abuja, FCT - LLB. Law - 2010 3. Bethany Christian Academy, Barkin Ladi, Plateau State - West African Examination Council (WAEC), Certificate of Ordinary Level Examinations and School Leaving Certificate - 2005 4. Napo Private School, Maitama, Abuja - Primary school leaving certificate - 1999', :email => 'dtargd@yahoo.co.uk', :internet_access => 'at home',
  :internet_use => 'every days', :is_urban => true, :name => 'Doose', :phone_number => '+2348065556565',
  :surname => 'Targema-Takema', :work_experience => '', :work_perspective => 'I am excited about the prospect of actually putting a lot of what I learnt in my course of study into actual practice e.g. researching, which is a major skill required in my profession and also which I have developed a passion for. Moreover, I like the prospect of being able to work online from home, which is an opportunity I have been looking for and not been able to find, mostly because of the bans online on my country e.g. not being able to open a pay pal account. I also like the prospect of building a portfolio because most major companies and institutions are looking for employees with experience. I believe I can get some work experience from this and develop my skills even more. Finally, I am excited about the prospect of using my skills to help people all over the world and also actually getting better jobs as time goes by.',
  :internet_price => 25 )
sp4 = ServicePartner.create(
  :country => Country.find_by_name('Malawi'), :affiliation => Affiliation.find_by_name('online advertisement (facebook)'), :education => Education.find_by_name('tertiary education/university'), :date_of_birth => Date.new(1989,1,1), :city => 'Blantyre',
  :education_background => 'During my early childhood, i got an education in England where my deceased mother was working at the time, so part of my primary school education was done in London. I did my secondary school (four years) at a local mission school in Thyolo (a two hour drive from Blantyre city) where i graduated with an O-level qualification-MSCE (Malawi School Certificate of Education) . I then did my tertiary education at a private institution...Corporate Governance College. I studied Business Administration (certificate) and finished with an Advanced Diploma in Business Management awarded by the Association of Business Executives (ABE) UK. The course is initially meant to be completed in two years, but due to some financial challenges, it took me three years.', :email => 'sajiwaasante@yahoo.com', :internet_access => 'cyber café',
  :internet_use => '5 days per week', :is_urban => true, :name => 'Asante Anne', :phone_number => '+265999612003',
  :surname => 'Sajiwa', :work_experience => 'I have worked for a hotel before, Malawi Sun as a receptionist. I was mainly responsible for bookings and reservations and customer service on a day-to-day basis. I would also work as the cashier for the main restaurant, Aamari at times. It gave me the opportunity of meeting alot of different people with different diverse cultures and communicate with them effectively. From Malawi Sun Hotel, i changed jobs and am now working in the motor industry for Stansfield Motors Limited as the personnel assistant.',
  :work_perspective => 'The Prospect of working with Transfair has taken up my interest because of the flexibility of the work. Where you can work from home or anywhere at an individual\'s own pace. Despite having a job already, which isn\'t demanding and doesn\'t pay so well, i like the idea of making extra money to cater for the responsibilities i have for me and my siblings. I also like the fact that i\'ll be gaining exposure for my talent and skill to the western countries. The idea of having an experience of working on an international platform thrills me.',
  :internet_price => 1200 )
ServicePartner.create([
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
  {:country => Country.find_by_name('Bangladesh'), :amount => 125, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Bolivia'), :amount => 12.5, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Cameroon'), :amount => 825, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('China'), :amount => 11, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Ghana'), :amount => 2.75, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('India'), :amount => 85, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Indonesia'), :amount => 15375, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Kazakhstan'), :amount => 250, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Kenya'), :amount => 175, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Malawi'), :amount => 275, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Nigeria'), :amount => 275, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Pakistan'), :amount => 150, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Papa New Guinea'), :amount => 3.75, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Philippines'), :amount => 75, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Sri Lanka'), :amount => 187.5, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Tanzania'), :amount => 2875, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Thailand'), :amount => 52.5, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Uganda'), :amount => 5000, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Vietnam'), :amount => 36250, :date => Date.new(2012,8,7)},
  {:country => Country.find_by_name('Zimbabwe'), :amount => 1.75, :date => Date.new(2012,8,7)},

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
job1 = Job.create(
   :client => Client.find_by_name('Adrion'), :job_type => JobType.find_by_name('transcription'),
   :deadline_client => Date.new(2012,8,10),
   :name => 'Tc – podcast project - 1st batch part I',
   :language => Language.find_by_name('English'))
job2 = Job.create(
   :client => Client.find_by_name('Adrion'), :job_type => JobType.find_by_name('transcription'),
   :deadline_client => Date.new(2012,8,10),
   :name => 'Tc – podcast project - 1st batch part II',
   :language => Language.find_by_name('English'))
Job.create([
], :without_protection => true)


Employment.delete_all
Employment.create([
  {:service_partner => sp3, :job => job1, :paid => false},
  {:service_partner => sp4,:job => job2, :paid => false},
], :without_protection => true)


