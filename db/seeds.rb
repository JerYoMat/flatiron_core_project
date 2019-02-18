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

