admin_user = AdminUser.create(
  email: 'admin@example.com',
  password: '12345678',
  password_confirmation: '12345678'
)

3.times do
  Group.create(name: FFaker::Lorem.word)
end

10.times do
  Student.create(
    group: Group.all.sample,
    people: People.create(name: FFaker::Name.first_name)
  )
end

10.times do
  Proffessor.create(
    people: People.create(name: FFaker::Name.first_name)
  )
end

10.times do
  Staff.create(
    people: People.create(name: FFaker::Name.first_name)
  )
end

10.times do
  Book.create(
    name: FFaker::Lorem.sentence,
    author: Author.create(name: FFaker::Name.first_name),
    publishing: Publishing.create(name: FFaker::Lorem.sentence)
  )
end

10.times do
  StudentCard.create(
    name: FFaker::Lorem.word,
    student: Student.all.sample,
    staff: Staff.all.sample,
    book: Book.all.sample,
    date_of_issuing: Time.zone.now - 1.month,
    date_of_return: Time.zone.now + 2.month
  )
end

10.times do
  TutorCard.create(
    name: FFaker::Lorem.word,
    proffessor: Proffessor.all.sample,
    staff: Staff.all.sample,
    book: Book.all.sample,
    date_of_issuing: Time.zone.now - 1.month,
    date_of_return: Time.zone.now + 2.month
  )
end
