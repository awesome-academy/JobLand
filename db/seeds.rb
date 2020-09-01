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
# a = Stripe::Product.create(name: "Sarter")
# b = Stripe::Product.create(name: "Pro")
# c = Stripe::Product.create(name: "Enterprise")
# Stripe::Price.create(product: a.id, unit_amount: 500, currency: "usd", recurring: {interval: "month"}, lookup_key: "starter")
# Stripe::Price.create(product: b.id, unit_amount: 1000, currency: "usd", recurring: {interval: "month"}, lookup_key: "Pro")
# Stripe::Price.create(product: c.id, unit_amount: 1500, currency: "usd", recurring: {interval: "month"}, lookup_key: "Enterprise")



Language.create(name:"French")
Language.create(name:"Russian")
Language.create(name:"Indonesian")
Language.create(name:"Portuguese")
Language.create(name:"Japanese")
Language.create(name:"Vietnamese")
Language.create(name:"Bengali")
Language.create(name:"Korean")

Skill.create(name:"JavaScript")
Skill.create(name:"Java")
Skill.create(name:"Python")
Skill.create(name:"Ruby")
Skill.create(name:"PHP")
Skill.create(name:"C++")
Skill.create(name:"CSS")
Skill.create(name:"C#")
Skill.create(name:"C")
Skill.create(name:"Go")
Skill.create(name:"Shell")
Skill.create(name:"Objective-C")
Skill.create(name:"Scala")
Skill.create(name:"Swift")
Skill.create(name:"TypeScript")



User.create( email: "123456@gmail.com", fullname: "Thái", password: "123123", password_confirmation: "123123",slug: "profile-Thaiculi", employer_role: true)
User.create( email: "aaa@gmail.com", fullname: "Sơn", password: "123123", password_confirmation: "123123",slug: "profile-DinhSon",admin_role: true)
User.create( email: "bbb@gmail.com", fullname: "ĐOàn", password: "123123", password_confirmation: "123123",slug: "profile-Doan")
User.create( email: "ccc@gmail.com", fullname: "Tùng", password: "123123", password_confirmation: "123123",slug: "profile-wejkfhwkfhek")
User.create( email: "ddd@gmail.com", fullname: "1231237890", password: "123123", password_confirmation: "123123",slug: "profile-sdkjhfhds")
User.create( email: "eee@gmail.com", fullname: "1231238901", password: "123123", password_confirmation: "123123",slug: "profile-sdkjhfhds")
User.create( email: "0user_test@gmail.com", fullname: "User test 0", password: "123123", password_confirmation: "123123",slug: "profile-User test 0")
User.create( email: "1user_test@gmail.com", fullname: "User test 1", password: "123123", password_confirmation: "123123",slug: "profile-User test 1")
User.create( email: "2user_test@gmail.com", fullname: "User test 2", password: "123123", password_confirmation: "123123",slug: "profile-User test 2")
User.create( email: "3user_test@gmail.com", fullname: "User test 3", password: "123123", password_confirmation: "123123",slug: "profile-User test 3")
User.create( email: "4user_test@gmail.com", fullname: "User test 4", password: "123123", password_confirmation: "123123",slug: "profile-User test 4")
User.create( email: "5user_test@gmail.com", fullname: "User test 5", password: "123123", password_confirmation: "123123",slug: "profile-User test 4")
User.create( email: "6user_test@gmail.com", fullname: "User test 6", password: "123123", password_confirmation: "123123",slug: "profile-User test 4")
User.create( email: "7user_test@gmail.com", fullname: "User test 7", password: "123123", password_confirmation: "123123",slug: "profile-User test 4")
User.create( email: "8user_test@gmail.com", fullname: "User test 8", password: "123123", password_confirmation: "123123",slug: "profile-User test 4")
User.create( email: "9user_test@gmail.com", fullname: "User test 9", password: "123123", password_confirmation: "123123",slug: "profile-User test 4")

# Cv.create(user_id: 1, introduction: "Versatile facilitator and coordinator with a diverse global background excelling in the English, French and Thai languages. Experienced in the field of education, project management, business development and professional development. Specialized in developing people as well as creating excellent customer experience and relationships.
# Versatile facilitator and coordinator with a diverse global background excelling in the English, French and Thai languages. Experienced in the field of education, project management, business development and professional development. Specialized in developing people as well as creating excellent customer experience and relationships.")
# Cv.create(user_id: 2, introduction: "Versatile facilitator and coordinator with a diverse global background excelling in the English, French and Thai languages. Experienced in the field of education, project management, business development and professional development. Specialized in developing people as well as creating excellent customer experience and relationships.
# Versatile facilitator and coordinator with a diverse global background excelling in the English, French and Thai languages. Experienced in the field of education, project management, business development and professional development. Specialized in developing people as well as creating excellent customer experience and relationships.")
# Cv.create(user_id: 3, introduction: "Versatile facilitator and coordinator with a diverse global background excelling in the English, French and Thai languages. Experienced in the field of education, project management, business development and professional development. Specialized in developing people as well as creating excellent customer experience and relationships.
# Versatile facilitator and coordinator with a diverse global background excelling in the English, French and Thai languages. Experienced in the field of education, project management, business development and professional development. Specialized in developing people as well as creating excellent customer experience and relationships.")
# Cv.create(user_id: 4, introduction: "Versatile facilitator and coordinator with a diverse global background excelling in the English, French and Thai languages. Experienced in the field of education, project management, business development and professional development. Specialized in developing people as well as creating excellent customer experience and relationships.
# Versatile facilitator and coordinator with a diverse global background excelling in the English, French and Thai languages. Experienced in the field of education, project management, business development and professional development. Specialized in developing people as well as creating excellent customer experience and relationships.")
# Cv.create(user_id: 5, introduction: "Versatile facilitator and coordinator with a diverse global background excelling in the English, French and Thai languages. Experienced in the field of education, project management, business development and professional development. Specialized in developing people as well as creating excellent customer experience and relationships.
# Versatile facilitator and coordinator with a diverse global background excelling in the English, French and Thai languages. Experienced in the field of education, project management, business development and professional development. Specialized in developing people as well as creating excellent customer experience and relationships.")

Company.create full_name: "Sun*", user_id: 1, address: "11F Handico Building, Pham Hung Road, Nam Tu Liem Dist., Ha Noi", phone: "0123456789",
     email: "Sun.arterik@gmail.com", descr: "Sun * Inc. (formerly known as Framgia Inc.), founded in 2012, is a Creative Studio with more than 1500
     members in 6 cities in 4 Asian countries. With the mission of connecting international businesses with Top Talents in Asia, Sun* has always ma
    de every effort to bring the world “Awesome” values.",slug: "test 4"

Company.create full_name: "Sun Asterisk", user_id: 2, address: "11F Handico Building, Pham Hung Road, Nam Tu Liem Dist., Ha Noi", phone: "0123456789",
     email: "Sun.arterik@gmail.com", descr: "Sun * Inc. (formerly known as Framgia Inc.), founded in 2012, is a Creative Studio with more than 1500
     members in 6 cities in 4 Asian countries. With the mission of connecting international businesses with Top Talents in Asia, Sun* has always ma
    de every effort to bring the world “Awesome” values."

Member.create user_id: 1, company_id:1
Job.create(title: "Wear OS System Integration Engineer(C++)", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
10000000, number: 6, area: "11F Handico Building, Pham Hung Road, Nam Tu Liem", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.",
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' )


Job.create(title: "Fullstack Dev (ReactJS, Ruby, Elixir)", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
20000000, number: 6, area: "384 Hoàng Diệu, District 4, Ho Chi Minh ", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.",
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' )

Job.create(title: "[All levels] Java Developers -Up to $2k", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
40000000, number: 6, area: "11F Handico Building, Pham Hung Road, Nam Tu Liem", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.",
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true, approved: true)


Job.create(title: "Backend Developer (Python)- Up to 1500$", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
10000000, number: 6, area: "11F Handico Building, Pham Hung Road, Nam Tu Liem", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.",
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true, approved: true)


Job.create(title: "Frontend Engineer", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
12000000, number: 6, area: "5th Floor, H3 Building, 384 Hoang Dieu, District 4, Ho Chi Minh ", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.",
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true, approved: true)

Job.create(title: "Tester Leader (Automation)", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
33300000, number: 6, area: "8 Nhà khách ATS, số 8 Phạm Hùng, Nam Tu Liem, Ha Noi ", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.",
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true, approved: true)


Job.create(title: "Android Developer (Java/Kotlin) ~ 1800$", user_id: 1, sex: 0, time_work: 0, grade: "2 years of experience", exp: 3, salary:
18000000, number: 6, area: "Zone 3 và Zone 4, Tầng 16, tòa nhà Văn phòng 789, số 147 đường Hoàng Quốc Việt, Phường Nghĩa Đô, Cau Giay, Ha Noi ", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.",
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true, approved: true)


Job.create(title: "Fullstack Developer (Laravel / VUE.js)", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
10000000, number: 6, area: "FCentral Building, floor 2, 16A Le Hong Phong, District 10, Ho Chi Minh", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.",
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true,approved: true)

