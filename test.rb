apps = {
    "go" => "./task_go.exe",
    "python" => "python task.py",
    "ruby" => "ruby task.rb",
}

puts "| language | time |"
puts "|---|---|"
apps.each do |app, cmd|
    start = Time.now
    `#{cmd}`
    finish = Time.now
    elapsed_time = finish - start
    puts "| #{app} | #{elapsed_time} |"
end
