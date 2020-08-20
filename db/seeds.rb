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


User.create( email: "123456@gmail.com", fullname: "123456", password: "123456", password_confirmation: "123456")


Company.create full_name: "Sun*", user_id: 1, address: "11F Handico Building, Pham Hung Road, Nam Tu Liem Dist., Ha Noi", phone: "0123456789",

		 email: "Sun.arterik@gmail.com", descr: "Sun * Inc. (formerly known as Framgia Inc.), founded in 2012, is a Creative Studio with more than 1500
		 members in 6 cities in 4 Asian countries. With the mission of connecting international businesses with Top Talents in Asia, Sun* has always ma
		de every effort to bring the world “Awesome” values."


Member.create user_id: 1, company_id:1
Job.create(title: "developer Ruby on Rails022", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
10000000, number: 6, area: "11F Handico Building, Pham Hung Road, Nam Tu Liem", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.", 
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự 
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức 
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true)

Job.create(title: "developer Ruby on Rails111", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
10000000, number: 6, area: "11F Handico Building, Pham Hung Road, Nam Tu Liem", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.", 
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự 
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức 
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true)
Job.create(title: "developer Ruby on Rails602", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
10000000, number: 6, area: "11F Handico Building, Pham Hung Road, Nam Tu Liem", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.", 
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự 
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức 
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true)
Job.create(title: "developer Ruby on Rails703", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
10000000, number: 6, area: "11F Handico Building, Pham Hung Road, Nam Tu Liem", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.", 
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự 
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức 
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true)
Job.create(title: "developer Ruby on Rails804", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
10000000, number: 6, area: "11F Handico Building, Pham Hung Road, Nam Tu Liem", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.", 
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự 
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức 
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true)
Job.create(title: "developer Ruby on Rails805", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
10000000, number: 6, area: "11F Handico Building, Pham Hung Road, Nam Tu Liem", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.", 
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự 
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức 
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true)
Job.create(title: "developer Ruby on Rails406", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
10000000, number: 6, area: "11F Handico Building, Pham Hung Road, Nam Tu Liem", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.", 
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự 
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức 
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true)
Job.create(title: "developer Ruby on Rails607", user_id: 1, sex: 0, time_work: 0, grade: "1 years of experience", exp: 3, salary:
10000000, number: 6, area: "11F Handico Building, Pham Hung Road, Nam Tu Liem", what: "Use Ruby on Rails Html, CSS, master Mysql,
Tinh thần làm việc cao, Thái độ tích cực. Kỹ năng giao tiếp tốt. Khả năng quản lý thời gian. Kỹ năng giải quyết vấn đề. Có tinh thần đồng đội.
Tự tin. Khả năng chấp nhận và học hỏi từ những lời phê bình", why: "Chúng tôi có tầm nhìn không tìm kiếm các xu hướng mới, mà quan sát những mong
muốn và giá trị cơ bản của con người không thay đổi từ 1000 năm nay và đưa chúng đến người dùng thông qua các công nghệ mới nhất. Các dịch vụ dựa
trên những giá trị bất biến sẽ không bao giờ hết mốt và sẽ được mọi người trên thế giới yêu thích, bất kể nền văn hóa nào.", 
how: "tin rằng trừ khi bản thân chúng tôi làm việc vui vẻ mỗi ngày,chúng tôi không thể cung cấp các dịch vụ và doanh nghiệp mang lại niềm vui và sự 
hứng khởi cho trẻ em và gia đình. Do đó, hệ thống hỗ trợ bữa trưa theo nhóm kích hoạt giao tiếp giữa các nhân viên, hệ thống tổ chức 
sinh nhật cho cha mẹ và con cái thể hiện văn hóa coi trọng gia đình,dành cho những người tìm kiếm kỹ năng và sự phát triển cấp cao hơn Có các hệ thống
nội bộ dành riêng cho Bộ hẹn giờ, chẳng hạn như ", from_date: '05/07/2020', to_date: '08/07/2020' , slide:true)





# Place.create!([
# { "name": "Buckingham Palace", "latitude": "51.501564","longitude": "51.502564"},
# { "name": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309"},
# { "name": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613"}
# ])
