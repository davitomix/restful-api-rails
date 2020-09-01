10.times do |_n|
  title = Faker::Lorem.word
  created_by = Faker::Number.number(digits: 10)
  Todo.create!(title: title,
               created_by: created_by)
end

todos = Todo.all

5.times do |_n|
  todos.each do |todo|
    name = Faker::Name.name
    done = false
    todo_id = nil
    todo.items.create!(name: name,
                       done: done,
                       todo_id: todo_id)
  end
end
