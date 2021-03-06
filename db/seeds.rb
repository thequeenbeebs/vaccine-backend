# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Appointment.destroy_all
Dose.destroy_all
Patient.destroy_all
Vaccine.destroy_all
VaccinationCenter.destroy_all

blaire = Patient.create(password: "blaire", first_name: "Blaire", last_name: "Baker", email: "bakerblaire@gmail.com", phone_number: "281-630-8839")
dane = Patient.create(password: "dane", first_name: "Dane", last_name: "Dawson", email: "dane@dane.com", phone_number: "111-867-5309")
raul = Patient.create(password: "raul", first_name: "Raul", last_name: "Sanchez", email: "raul@raul.com", phone_number: "123-456-7890")
angelo = Patient.create(password: "angelo", first_name: "Angelo", last_name: "Xenakis", email: "angelo@angelo.com", phone_number: "713-111-2222")
adam = Patient.create(password: "adam", first_name: "Adam", last_name: "Johnson", email: "adam@adam.com", phone_number: "832-987-6543")

methodist = VaccinationCenter.create(name: "Houston Methodist Hospital", address: "6565 Fannin Street", city: "Houston", state: "Texas", zip_code: "77030", phone_number: "281-626-5551", days_closed: [], opening_hour: 8, closing_hour: 18, appointments_per_hour: 25, coordinates: [-95.39971177387433, 29.7100756146111])
luke = VaccinationCenter.create(name: "CHI St. Luke's Health", address: "6720 Bertner Ave", city: "Houston", state: "Texas", zip_code: "77030", phone_number: "832-844-6352", days_closed: [], opening_hour: 8, closing_hour: 19, appointments_per_hour: 20, coordinates: [-95.40061167387442, 29.707873418290546])
pub_health = VaccinationCenter.create(name: "Harris County Public Health", address: "2223 West Loop South", city: "Houston", state: "Texas", zip_code: "77027", phone_number: "832-927-8787", days_closed: [0, 6], opening_hour: 8, closing_hour: 17, appointments_per_hour: 15, coordinates: [-95.45662028921673, 29.74420210351533])
memorial = VaccinationCenter.create(name: "Memorial Hermann Medical Center", address: "929 Gessner Drive", city: "Houston", state: "Texas", zip_code: "77024", phone_number: "832-772-2864", days_closed: [], opening_hour: 8, closing_hour: 18, appointments_per_hour: 30, coordinates: [-95.54557933154433, 29.78274698131941])
anderson = VaccinationCenter.create(name: "MD Anderson Cancer Center", address: "1515 Holcombe Blvd.", city: "Houston", state: "Texas", zip_code: "77030", phone_number: "1-877-934-3580", days_closed: [], opening_hour: 9, closing_hour: 17, appointments_per_hour: 25, coordinates: [-95.39698190271022, 29.707484499928192])

moderna = Vaccine.create(name: "Moderna", doses_required: 2, weeks_between_doses: 4)
pfizer = Vaccine.create(name: "Pfizer", doses_required: 2, weeks_between_doses: 3)

Dose.create(vaccination_center_id: methodist.id, vaccine_id: moderna.id)
Dose.create(vaccination_center_id: methodist.id, vaccine_id: moderna.id)
Dose.create(vaccination_center_id: luke.id, vaccine_id: moderna.id)
Dose.create(vaccination_center_id: memorial.id, vaccine_id: pfizer.id)
Dose.create(vaccination_center_id: memorial.id, vaccine_id: pfizer.id)

Appointment.create(patient_id: blaire.id, vaccination_center_id: methodist.id, vaccine_id: moderna.id, appointment_time: DateTime.new(2021, 2, 28, 10))
Appointment.create(patient_id: blaire.id, vaccination_center_id: methodist.id, vaccine_id: moderna.id, appointment_time: DateTime.new(2021, 3, 28, 11))
Appointment.create(patient_id: dane.id, vaccination_center_id: luke.id, vaccine_id: moderna.id, appointment_time: DateTime.new(2021, 3, 1, 13))
Appointment.create(patient_id: raul.id, vaccination_center_id: memorial.id, vaccine_id: pfizer.id, appointment_time: DateTime.new(2021, 2, 22, 14))
Appointment.create(patient_id: raul.id, vaccination_center_id: memorial.id, vaccine_id: pfizer.id, appointment_time: DateTime.new(2021, 3, 15, 12))



# create location coordinates array!


