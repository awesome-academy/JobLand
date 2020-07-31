# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# JobType.create(name: "Ruby on rails")
# Company.create(full_name: "Sun Academy", address: "Hanoi", phone: "012345678", email: "123Sun@gmail.com", descr: "Description Company")
# Job.create(Company_id: 1, department_id: 1,  )


   Language.create(name:"French")
    Language.create(name:"Russian")
     Language.create(name:"Indonesian")
      Language.create(name:"Portuguese")
       Language.create(name:"Japanese")
        Language.create(name:"Vietnamese")
         Language.create(name:"Bengali")
          Language.create(name:"Korean")

 Company.create full_name: "Sun*", address: "11F Handico Building, Pham Hung Road, Nam Tu Liem Dist., Ha Noi", phone: "0123456789",
		 email: "Sun.arterik@gmail.com", descr: "Sun * Inc. (formerly known as Framgia Inc.), founded in 2012, is a Creative Studio with more than 1500
		 members in 6 cities in 4 Asian countries. With the mission of connecting international businesses with Top Talents in Asia, Sun* has always ma
		de every effort to bring the world “Awesome” values."
Job.create(title: "developer Ruby on Rails", company_id: 1, sex: 0, time_work: 8, grade: "1 years of experience", exp: 3, salary: 
"10000000", number: 6, area: "11F Handico Building, Pham Hung Road, Nam Tu Liem", info: "Use Ruby on Rails Html, CSS, master Mysql")

