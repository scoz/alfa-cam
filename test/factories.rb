# Collects factories for creating diffrent valid mock objects for testing

=begin Factory examples

Factory.define :something do |f|
  f.some_attribute 'A string with increment %d'
  f.an_int 123
  f.assocation { Factory :other_thing }
end

Factory.define :base do |f|
  f.one = 1
end

Factory.define :second, parent: :base do |f|
  # f.one = 1 from :base automatically
  f.two = 2
end

Factory.define :admin, class: :user do |f|
  # Uses the User model but the factory is called admin
end

=end

Factory.define :course do |f|
  f.dept_code 'CS'
  f.course_num '%d'
  f.title 'A course title'
end

Factory.define :academic_term do |f|
  f.title 'Term %d'
end

Factory.define :offering do |f|
  f.term { Factory :academic_term }
  f.course { Factory :course }
end

Factory.define :admin, class: :user do |f|
  f.login 'admin%d'
  f.name 'Admin'
  f.roles [:admin]
end

Factory.define :instructor, class: :user do |f|
  f.login 'inst%d'
  f.name 'Instructor'
  f.roles [:instructor]
end

Factory.define :outcome do |f|
  f.title 'Outcome %d'
  f.key '%d'
  f.description 'An outcome description'
end

Factory.define :outcome_group do |f|
  f.outcomes { (1..5).collect { Factory :outcome } }
end

