10.times do |i|
  Task.create(
    title: "task No.#{i}",
    description: "This is task No.#{i}",
    completed: false
  )
end
