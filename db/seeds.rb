require 'csv'
require 'pry'


course = CSV.read('course_curriculum.csv')
course = course.each_with_index do |line, index|
  line[2] = index +1
end 


current_unit_id = 0
current_topic_id = 0
course.each do |line|
    designator = line[0]
    name = line[1]
    order = line[2]
    if designator == "unit"
        current_unit = Unit.create!(title: name, course_order: order)
        current_unit_id = current_unit.id 
    elsif designator == "topic"
        current_topic = Topic.create!(title: name, course_order: order, unit_id: current_unit_id)
        current_topic_id = current_topic.id 
    elsif ["reading", "lab", "video", "project"].include?(designator)
        lesson = Lesson.create!(title: name, course_order: order, unit_id: current_unit_id, topic_id: current_topic_id, lesson_type: designator)
    end  
end 


#Adding Unit Images 
intro_ruby = Unit.find(1)
intro_ruby.image_path ='ruby_first.png'
intro_ruby.save 

git = Unit.find(2)
git.image_path ='git.png'
git.save 

html_css = Unit.find(3)
html_css.image_path ='html_css.png'
html_css.save 

p_ruby = Unit.find(4)
p_ruby.image_path ='ruby2.png'
p_ruby.save 

sql = Unit.find(5)
sql.image_path ='sql.png'
sql.save 

orm = Unit.find(6)
orm.image_path ='orm.png'
orm.save 

rack = Unit.find(7)
rack.image_path ='rack.png'
rack.save 

sinatra = Unit.find(8)
sinatra.image_path ='sinatra.png'
sinatra.save 

rails = Unit.find(9)
rails.image_path ='rails.png'
rails.save 

intro_js = Unit.find(10)
intro_js.image_path ='js.png'
intro_js.save 

advanced_js = Unit.find(11)
advanced_js.image_path ='js.png'
advanced_js.save 

rails_js = Unit.find(12)
rails_js.image_path ='rails_js.png'
rails_js.save 

react = Unit.find(13)
react.image_path ='react.png'
react.save 

redux = Unit.find(14)
redux.image_path ='redux.png'
redux.save 